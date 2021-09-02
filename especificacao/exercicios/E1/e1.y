/* 
 * Template de programa bison para a linguagem E1.
 * Serve apenas para definir tokens associados ao analisador léxico implentado com flex.
 * Executar  'bison -d e1.y' para gerar arquivos e1.tab.c e e1.tab.h.
 */

%{
/* includes, C defs */

#include <stdio.h>

void yyerror(const char* msg) {
      fprintf(stderr, "%s\n", msg);
}

int yylex();
%}

/* declare tokens */

%token CONST
%token ID
%token INT
%token MINUS
%token NUM
%token PLUS

%%

program: 
/* void */

%%

/*
int main(int argc, char **argv) {
    int token;
    char *token_name[6] = {"CONST", "ID", "INT", "MINUS", "NUM", "PLUS"};

    while ((token = yylex())) {
       fprintf(stdout,"token: %d, token class: %s\n", 
       token, token_name[token-258]);
    } 
}
*/

