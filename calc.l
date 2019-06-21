%option noyywrap

%{
#include <stdio.h>

#define YY_DECL int yylex()

#include "calc.tab.h"

%}

%%

[ \t]	;
[0-9]+\.[0-9]+ 	{yylval.fval = atof(yytext); return T_FLOAT;}
[0-9]+		{yylval.ival = atoi(yytext); return V_INT;}
\n		{return NEWLINE;}
"+"		{return SOMA;}
"-"		{return SUBTRAI;}
"*"		{return MULTIPLICA;}
"/"		{return DIVIDE;}
"("		{return ABREPARAENTESES;}
")"		{return FECHARPARAENTESES;}
"exit"		{return SAIR;}
"quit"		{return SAIR;}

%%
