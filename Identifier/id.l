%{
#include"y.tab.h"
%}

%%
[a-zA-Z]   {return LETTER ;}
[0-9]	   {return LETTER ;}
[_]	   {return UNDERSCORE ;}
[\n]	   {return NL ;}
. {return yytext[0] ;}
%%

