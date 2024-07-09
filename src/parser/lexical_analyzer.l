%option noyywrap
%{
/*****************声明和选项设置  begin*****************/
#include <stdio.h>
#include <stdlib.h>

#include "syntax_tree.h"
#include "syntax_analyzer.h"

int lines=1;
int pos_start=1;
int pos_end=1;

void pass_node(char *text){
     yylval.node = new_syntax_tree_node(text);
}

/*****************声明和选项设置  end*****************/

%}


%%
 /* to do for students */
 /* two cases for you, pass_node will send flex's token to bison */
\/\/.*\n?      {}
\+ 	{pos_start = pos_end; pos_end += 1; pass_node(yytext); return ADD;}
\-   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return SUB;}
\*   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return MUL;}
\/   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return DIV;}
\%   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return MOD;}

\<   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return LT;}
\<=   {pos_start = pos_end; pos_end += 2; pass_node(yytext); return LET;}
\>   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return GT;}
\>=   {pos_start = pos_end; pos_end += 2; pass_node(yytext); return GET;}
==   {pos_start = pos_end; pos_end += 2; pass_node(yytext); return EQ;}
!=   {pos_start = pos_end; pos_end += 2; pass_node(yytext); return NEQ;}

\(   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return LPARENTHESIS;}
\)   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return RPARENTHESIS;}
\[   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return LBRACKET;}
\]   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return RBRACKET;}
\{   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return LBRACE;}     
\}   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return RBRACE;}

\=   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return ASSIGN;}
\,   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return COMMA;}
\;   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return SEMICOLON;}
\!   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return NOT;}

\&\&  {pos_start = pos_end; pos_end += 2; pass_node(yytext); return AND;}
\|\|  {pos_start = pos_end; pos_end += 2; pass_node(yytext); return OR;}

int  {pos_start = pos_end; pos_end += 3; pass_node(yytext); return INT;}
float {pos_start = pos_end; pos_end += 5; pass_node(yytext); return FLOAT;}
void {pos_start = pos_end; pos_end += 4; pass_node(yytext); return VOID;}
const {pos_start = pos_end; pos_end += 5; pass_node(yytext); return CONST;}

if   {pos_start = pos_end; pos_end += 2; pass_node(yytext); return IF;}
else {pos_start = pos_end; pos_end += 4; pass_node(yytext); return ELSE;}
while {pos_start = pos_end; pos_end += 5; pass_node(yytext); return WHILE;}
break {pos_start = pos_end; pos_end += 5; pass_node(yytext); return BREAK;}
continue {pos_start = pos_end; pos_end += 8; pass_node(yytext); return CONTINUE;}
return {pos_start = pos_end; pos_end += 6; pass_node(yytext); return RETURN;}
[ ]  ;
\n   {pos_start = 1; pos_end = 1; lines += 1;}
\/\*([^*]|\*+[^/])*\*+\/ {}
[ \t]     {pos_end += 1;}     
[0-9]+[eE][-+]?[0-9]+    {pos_start = pos_end; pos_end += strlen(yytext); pass_node(yytext); return FLOATCONST;}
[0-9]*\.[0-9]*([eE][-+]?[0-9]+)?   {pos_start = pos_end; pos_end += strlen(yytext); pass_node(yytext); return FLOATCONST;}
0[xX][0-9a-fA-F]+[pP][-+]?[0-9]+   {pos_start = pos_end; pos_end += strlen(yytext); pass_node(yytext); return FLOATCONST;}
0[xX][0-9a-fA-F]*\.[0-9a-fA-F]+([pP][-+]?[0-9]+)? {pos_start = pos_end; pos_end += strlen(yytext); pass_node(yytext); return FLOATCONST;}

[a-zA-Z_]+[a-zA-Z_0-9]*  {pos_start = pos_end; pos_end += strlen(yytext); pass_node(yytext); return IDENT;}

[1-9][0-9]*    {pos_start = pos_end; pos_end += strlen(yytext); pass_node(yytext); return INTCONST;}
0[0-7]*   {pos_start = pos_end; pos_end += strlen(yytext); pass_node(yytext); return INTCONST;}
0[xX][0-9a-fA-F]+   {pos_start = pos_end; pos_end += strlen(yytext); pass_node(yytext); return INTCONST;}


 /****请在此补全所有flex的模式与动作  end******/
%%
