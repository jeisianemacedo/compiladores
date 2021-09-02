/*
 * Template para programa flex.
 * Autora: Christina von Flach
 */

%option noyywrap nodefault yylineno

%{
#include "e1.tab.h"
%}

%%

"//".*                { /* void */ }

const                 { return CONST; }
int                   { return INT; }


[0-9]+                { return NUM; }
[a-zA-Z][a-zA-Z0-9_]* { return ID; }

"+"                   { return PLUS; }
"-"                   { return MINUS; }

[ \n\t]+              { /* void */ }

.                     { /* error */ }

%%

int main(int argc, char **argv) {
    int token;
    // o array abaixo precisa ser ajustado para incluir  outros token codes
    char *token_name[6] = {"CONST", "ID", "INT", "MINUS", "NUM", "PLUS"};

    while ((token = yylex())) {
       fprintf(stdout,"token code: %d", token);
       fprintf(stdout,", token class: %s", token_name[token-258]);
       fprintf(stdout,", lexeme: %s\n", yytext);
    }
}
