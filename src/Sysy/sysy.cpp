#include "CodeGen.hpp"
#include "CodeGenRegister.hpp"
#include "ConstPropagation.hpp"
#include "LoopInvHoist.hpp"
#include "DeadCode.hpp"
#include "Mem2Reg.hpp"
#include "Module.hpp"
#include "PassManager.hpp"
#include "sysy_builder.hpp"
#include "gvn.hpp"

#include <filesystem>
#include <fstream>
#include <memory>
#include <string>

using std::string;
using std::operator""s;

struct Config
{
    string exe_name; // compiler exe name
    std::filesystem::path input_file;
    std::filesystem::path output_file;

    bool emitllvm{false};
    bool emitasm{false};
    bool dump_json{false};
    bool mem2reg{false};
    bool const_prop{false};
    bool gvn{false};
    bool loop_inv_hoist{false};

    Config(int argc, char **argv) : argc(argc), argv(argv)
    {
        parse_cmd_line();
        check();
    }

private:
    int argc{-1};
    char **argv{nullptr};

    void parse_cmd_line();
    void check();
    // print helper infomation and exit
    void print_help() const;
    void print_err(const string &msg) const;
};
#include <fstream>

string define_replacement(string origin_file)
{
    // LOG(DEBUG)<<origin_file;
    std::fstream infile, outfile;
    infile.open(origin_file.c_str(), std::ios::in);
    // LOG(DEBUG)<<infile.is_open();
    // LOG(DEBUG)<<"in\n";
    std::string strname = "define_temp.sy";
    outfile.open(strname.c_str(), std::ios::out);
    // LOG(DEBUG)<<"out "<<infile.is_open()<<"\n";
    if (!infile.is_open())
        return "";
    // LOG(DEBUG)<<"out\n";
    std::string strLine;

    // #define starttime() _sysy_starttime(__LINE__)
    // #define stoptime()  _sysy_stoptime(__LINE__)

    int cntline = 0;
    // LOG(DEBUG)<<cntline<<"\n";
    while (getline(infile, strLine))
    {
        cntline++;
        //   LOG(DEBUG)<<cntline<<"\n";
        while (strLine[0] == '\t')
        {
            outfile << '\t';
            LOG(INFO) << "tihuan";
            strLine.erase(strLine.begin());
        }
        if (strLine.find("starttime()") != string::npos)
        {
            LOG(INFO) << "find starttime()";
            outfile << "_sysy_starttime(" + std::to_string(cntline) + ");" << std::endl;
        }
        else if (strLine.find("stoptime()") != string::npos)
        {
            LOG(INFO) << "find stoptime()";
            outfile << "_sysy_stoptime(" + std::to_string(cntline) + ");" << std::endl;
        }
        else
        {
            outfile << strLine << std::endl;
        }
    }
    outfile.close();
    return "define_temp.sy";
}

int main(int argc, char **argv)
{
    Config config(argc, argv);

    std::unique_ptr<Module> m;
    {

        auto origin_file = config.input_file.string();
        LOG(INFO) << origin_file;
        std::string define_file;
        syntax_tree *syntax_tree;
        // step 1 通过语言解析器得到具体语法树
        define_file = define_replacement(origin_file);
        syntax_tree = parse(define_file.c_str());
        // 生成 ast
        auto ast = AST(syntax_tree);
        ASTPrinter printer;
        // ast.run_visitor(printer);
        CminusfBuilder builder;
        ast.run_visitor(builder);
        m = builder.getModule();
    }

    PassManager PM(m.get());

    // LOG(INFO) << "before mem2reg";
    // for(auto &func : m->get_functions())
    // {
    //     LOG(INFO) << func.get_name();
    //     for(auto &bb : func.get_basic_blocks())
    //     {
    //         LOG(INFO) << bb.get_name();
    //         for(auto &ins : bb.get_instructions())
    //         {
    //             LOG(INFO) << ins.print() << " " << ins.tag();
    //         }
    //     }
    // }

    if (config.mem2reg)
    {
        PM.add_pass<Mem2Reg>();
        LOG(INFO) << "finish mem2reg and start deadcode";
        PM.add_pass<DeadCode>();
    }
    if (config.const_prop)
    {
        PM.add_pass<ConstPropagation>();
        PM.add_pass<DeadCode>();
    }

    if (config.gvn)
    {
        PM.add_pass<GVN>(config.dump_json);
        PM.add_pass<DeadCode>();
    }

    if (config.loop_inv_hoist)
    {
        PM.add_pass<LoopInvHoist>();
        PM.add_pass<DeadCode>();
    }

    PM.run();

    std::ofstream output_stream(config.output_file);
    if (config.emitllvm)
    {
        auto abs_path = std::filesystem::canonical(config.input_file);
        output_stream << "; ModuleID = 'cminus'\n";
        output_stream << "source_filename = " << abs_path << "\n\n";
        output_stream << m->print();
    }
    else if (config.emitasm)
    {
        CodeGenRegister codegen(m.get());
        codegen.run();
        output_stream << codegen.print();
    }

    return 0;
}

void Config::parse_cmd_line()
{
    exe_name = argv[0];
    for (int i = 1; i < argc; ++i)
    {
        if (argv[i] == "-h"s || argv[i] == "--help"s)
        {
            print_help();
        }
        else if (argv[i] == "-o"s)
        {
            if (output_file.empty() && i + 1 < argc)
            {
                output_file = argv[i + 1];
                i += 1;
            }
            else
            {
                print_err("bad output file");
            }
        }
        else if (argv[i] == "-emit-llvm"s)
        {
            emitllvm = true;
        }
        else if (argv[i] == "-S"s)
        {
            emitasm = true;
        }
        else if (argv[i] == "-mem2reg"s)
        {
            mem2reg = true;
        }
        else if (argv[i] == "-const-prop"s)
        {
            const_prop = true;
        }
        else if (argv[i] == "-gvn"s)
        {
            gvn = true;
        }
        else if (argv[i] == "-loop-inv-hoist"s)
        {
            loop_inv_hoist = true;
        }
        else
        {
            if (input_file.empty())
            {
                input_file = argv[i];
            }
            else
            {
                string err =
                    "unrecognized command-line option \'"s + argv[i] + "\'"s;
                print_err(err);
            }
        }
    }
}

void Config::check()
{
    if (input_file.empty())
    {
        print_err("no input file");
    }
    if (input_file.extension() != ".sy")
    {
        print_err("file format not recognized");
    }
    if (emitllvm and emitasm)
    {
        print_err("emit llvm and emit asm both set");
    }
    if (not emitllvm and not emitasm)
    {
        print_err("not supported: generate executable file directly");
    }
    if (gvn and not mem2reg)
    {
        print_err("enabling GVN without mem2reg");
    }
    if (output_file.empty())
    {
        output_file = input_file.stem();
        if (emitllvm)
        {
            output_file.replace_extension(".ll");
        }
        else if (emitasm)
        {
            output_file.replace_extension(".s");
        }
    }
}

void Config::print_help() const
{
    std::cout << "Usage: " << exe_name
              << " [-h|--help] [-o <target-file>] [-mem2reg] [-emit-llvm] [-S] "
                 "<input-file>"
              << std::endl;
    exit(0);
}

void Config::print_err(const string &msg) const
{
    std::cout << exe_name << ": " << msg << std::endl;
    exit(-1);
}
