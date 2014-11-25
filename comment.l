%{
#include<stdio.h>

%}

commentol "//".*
commentoml "/*".*"*/"
real [0-9]+"."[0-9]+

%%
{commentol} {printf("commento su linea: %s",yytext);}
{commentoml} {printf("commento multilinea: %s",yytext);}
{real} {printf("numero reale: %s",yytext);}
%%

yywrap()
{
}

main(){
	
	yylex();

}
