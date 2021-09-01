/* 
 * Template de programa bison para a linguagem E1.
 * Serve apenas para definir tokens associados ao analisador léxico implentado com flex.
 * Executar  'bison -d e1.y' para gerar arquivos e1.tab.c e e1.tab.h.
 */

/* declare tokens */

%token ID
%token NUM
%token CONST
%token INT
%token PLUS
%token MINUS

%%

program: 
/* void */

%%

int main(int argc, char **argv) {
    int token;

    while ((token = yylex())) {
      printf("(token: %d, lexema: %s)\n", token, yytext);
    } 
}
