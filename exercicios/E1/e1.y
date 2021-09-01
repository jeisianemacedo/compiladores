/* Programa bison para a linguagem especificada no exemplo 1 (E1).
 * Por enquanto, serve como driver para interagir com um programa flex
 */

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

int main () {

// ... yyparse() ...

}
