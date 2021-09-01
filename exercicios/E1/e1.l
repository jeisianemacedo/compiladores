// diretivas 
/* ... 

*/

%{

#include // ... vem do bison

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


