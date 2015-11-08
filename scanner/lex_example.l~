%{
#include<stdio.h>
#include<ctype.h>
#include<string.h>
#include<stdlib.h>
//extern char *yytext;
//extern FILE *yyin;
extern int i;
int lineno=1;
%}


letter	[a-zA-Z]
digit	[0-9]

id	({letter}|[_])({letter}|{digit}|[_])*
num	{digit}+
whitespace	[\t]+
enter	[\n]+


%%
"begin"	{printf("< %s	1 >\n",yytext);}

"if"	{printf("< %s	2 >\n",yytext);}

"then"	{printf("< %s	3 >\n",yytext);}

"while"	{printf("< %s	4 >\n",yytext);}

"do"	{printf("< %s	5 >\n",yytext);}

"end"	{printf("< %s	6 >\n",yytext);}

{num}	{printf("< %s	11 >\n",yytext);}

"+"	{printf("< %s	13 >\n",yytext);}

"-"	{printf("< %s	14 >\n",yytext);}

"*"	{printf("< %s	15 >\n",yytext);}

"/"	{printf("< %s	16 >\n",yytext);}

":"	{printf("< %s	17 >\n",yytext);}

":="	{printf("< %s	18 >\n",yytext);}

"<"	{printf("< %s	20 >\n",yytext);}

"<>"	{printf("< %s	21 >\n",yytext);}

"<="	{printf("< %s	22 >\n",yytext);}

">"	{printf("< %s	23 >\n",yytext);}

">="	{printf("< %s	24 >\n",yytext);}

"="	{printf("< %s	25 >\n",yytext);}

";"	{printf("< %s	26 >\n",yytext);}

"("	{printf("< %s	27 >\n",yytext);}

")"	{printf("< %s	28 >\n",yytext);}

"#"	{printf("< %s	0 >\n",yytext);}

{id}	{printf("< %s	10 >\n",yytext);}

{whitespace}	{}

{enter}	{lineno++;}

%%


int main(void){
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
