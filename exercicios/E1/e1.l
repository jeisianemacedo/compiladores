/* 
 * Template para programa flex.
 * Autora: Christina von Flach
 */

%option noyywrap nodefault

%{
#include "e1.tab.h"
void yyerror(char *s);
%}

%%

"//".*                { /* void */ }

const                 { return CONST; }
int                   { return INT; }


[0-9]+                { return NUM; }
[a-zA-Z][a-zA-Z0-9_]+ { return ID; }

"+"                   { return PLUS; }
"-"                   { return MINUS; }

[ \n\t]+              { /* void */ }

.                     { /* error */ } 

%%


