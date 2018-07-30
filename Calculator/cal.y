%{
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
%}
%token DIGIT  
%left '+' '-'
%right '*' '/'
%%
s: expr  {printf("Answer : %d\n", $$);}
	;
expr: DIGIT  {$$=$1;}
	| expr '+' expr 	{$$ =  $1 + $3;}
	| expr '-' expr   	{$$ =  $1 - $3;}
	| expr '*' expr	   	{$$ =  $1 * $3;}
	| expr '/' expr 	{if($3==0) {yyerror("error");} else {$$ =  $1 / $3;} }
	| '('expr')'   		{$$ =  $2;}
	| '-' expr %prec '*'		{$$ =  -$2;}
	;
%%
int yyerror(char *msg)
{
printf("Invalid");
}
int main()
{
printf("enter a integer expresion\n");
yyparse();
return 0;
}
