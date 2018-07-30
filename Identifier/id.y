%{
#include<stdio.h>
#include<stdlib.h>
%}
%token LETTER DIGIT UNDERSCORE NL
%%
stmt: variable NL {printf("valid identifier\n"),exit(0);}
	;
variable: LETTER alpha|UNDERSCORE alpha
	;
alpha: LETTER|DIGIT|LETTER alpha|DIGIT alpha
	;
%%
int yyerror(char *msg)
{
printf("Invalid identifier");
exit(0);
}
main()
{
printf("enter a string\n");
yyparse();
}
