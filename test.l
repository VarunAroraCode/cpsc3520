%{
#include <stdio.h>
#include <string.h>
#include "y.tab.h"
%}
%%
[0-9]+          	     return NUMBER;
[\+\-\*\/]             return OPERATOR;
\n                     ;
[ \t]+                 ;
%%
