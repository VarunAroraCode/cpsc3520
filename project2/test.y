%{
#include <stdio.h>
#include <string.h>
%}

%token NUMBER 
%token OPERATOR

%%
expr:  	NUMBER OPERATOR NUMBER        { printf("EXPRESSION\n"); return 0;}
		;


%%
void yyerror(const char *str)
{
    fprintf(stderr, "error: %s\n", str);
}

int yywrap()
{
    return 1;
}

main()
{
    yyparse();
}