%{
#include <stdio.h>
%}

%token INTEGER  
%left '+' '-'
%left '*' '/'

%%
ROOT: EXPR{ printf("=%d\n", $$); return 0; }; 
EXPR:   RULE_1_HERE { $$ = $1 + $3; printf("%d+%d", $1, $3);}
        |RULE_2_HERE { $$ = $1 - $3; printf("%d-%d", $1, $3);}
        |RULE_3_HERE { $$ = $1 * $3; printf("%d*%d", $1, $3);}
        |RULE_4_HERE { $$ = $1 / $3; printf("%d/%d", $1, $3);}
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