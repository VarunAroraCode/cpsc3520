%{ 
  #include <stdio.h> 
  #include "y.tab.h" 
  extern int yylval; 
%} 

%% 
REGULAR_EXPRESSION_HERE { yylval=atoi(yytext); return INTEGER; } 
[\t] ;   
[\n] return 0;   
. return yytext[0]; 
  
%% 
  
int yywrap() 
{ 
   return 1; 
} 
