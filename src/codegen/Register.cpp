#include "Register.hpp"
#include <string>

std::string Reg::print() const {
    if (id == 0) {
        return "zero";
    }
    if (id == 1) {
        return "ra";
    }
    if (id == 2) {
        return "sp";
    }
    if (id == 3) {
        return "gp";
    }
    if (id == 4) {
        return "tp";
    }
    if (5 <= id and id <= 7) {
        return "t" + std::to_string(id - 5);
    }
    if (id == 8) {
        return "fp";
    }
    if (id == 9) {
        return "s1";
    }
    if (10 <= id and id <= 17) {
        return "a" + std::to_string(id - 10);
    }
    if (18 <= id and id <= 27) {
        return "s" + std::to_string(id - 16);
    }
    if (28 <= id and id <= 31) {
        return "t" + std::to_string(id - 25);
    }
    assert(false);
}

std::string FReg::print() const {

    if (0 <= id and id <= 7) {
        return "fa" + std::to_string(id);
    }
    if (8 <= id and id <= 23) {
        return "ft" + std::to_string(id - 8);
    }
    if (24 <= id and id <= 31) {
        return "fs" + std::to_string(id - 24);
    }
    assert(false);
}
