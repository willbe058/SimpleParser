%{
#include<stdio.h>
#include<ctype.h>
#include<string.h>
#include<stdlib.h>
#include "y.tab.h"
extern char *yytext;
//extern FILE *yyin;
int lineno=1;
%}

%option yylineno

letter	[a-zA-Z]
digit	[0-9]

id	({letter}|[_])({letter}|{digit}|[_])*
num	{digit}+
whitespace	[\t]+
enter	[\n]+


%%
"begin"	{return BEGI;}

"if"	{return IF;}

"then"	{return THEN;}

"while"	{return WHILE;}

"do"	{return DO;}

"end"	{return END;}

{num}	{return NUM;}

"+"	{return '+';}

"-"	{return '-';}

"*"	{return '*';}

"/"	{return '/';}

":"	{return ':';}

":="	{return DECL;}

"<"	{return '<';}

"<>"	{return NE;}

"<="	{return LE;}

">"	{return '>';}

">="	{return GE;}

"="	{return EQ;}

";"	{return ';';}

"("	{return '(';}

")"	{return ')';}

"#"	{return '#';}

{id}	{return ID;}

.|\n

%%
int yywrap()
{
    return 1;
}

/** int main(void){
	char infilename[400];
	printf("input file name:");
	scanf("%s",&infilename);
	yyin=fopen(infilename,"r");
	printf("start analyse....\n");
	if(!yyin){
	return 0;}
	yylex();
	fclose(yyin);

	return 1;
}
**/
