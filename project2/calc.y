%{
#include <stdio.h>
%}

%token INTEGER  
%left '+' '-'
%left '*' '/'

%%
ROOT: EXPR{ printf("=%d\n", $$); return 0; }; 
EXPR:    EXPR '+' EXPR { $$ = $1 + $3; printf("%d+%d", $1, $3);}
        |EXPR '-' EXPR{ $$ = $1 - $3; printf("%d-%d", $1, $3);}
        |EXPR '*' EXPR{ $$ = $1 * $3; printf("%d*%d", $1, $3);}
        |EXPR '/' EXPR{ $$ = $1 / $3; printf("%d/%d", $1, $3);}
        |INTEGER { $$ = $1; }
        ;

%%
void yyerror(const char *str)
{
    fprintf(stderr, "error: %s\n", str);
}

int main(void) {
    yyparse();
}