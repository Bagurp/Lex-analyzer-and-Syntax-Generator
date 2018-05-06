alpha [a-zA-Z]
digit [0-9]
us [_]
%{
      #include<stdio.h>
      #include "y.tab.h"
      int yylineno=1;    
%}
%%
[ \t]		;
[ \n]   { yylineno = yylineno + 1;}
integer	  {printf("\nKeyword - int - INT");return INT;}
float {printf("\nKeyword - float - FLOAT ");return FLOAT;}
char {printf("\nKeyword - char - CHAR");return CHAR;}
void {printf("\nKeyword - void - VOID");return VOID;}
double {printf("\nKeyword - double - DOUBLE");return DOUBLE;}
program {printf("\nKeyword - program - PROGRAM");return PROGRAM;}
beginprogram {printf("\nKeyword - beginprogram - BEGIN_PROGRAM");return BE;}
endprogram {printf("\nKeyword - endprogram - END_PROGRAM");return EN;}
and     {printf("\nKeyword - and - AND ");return AND;}
or      {printf("\nKeyword - or - OR"); return OR;}
loop    {printf("\nKeyword - loop - LOOP");return LOOP;}
endloop {printf("\nKeyword - endloop - ENDLOOP");return ENDLOOP;}
then    {printf("\nKeyword - then - THEN");return THEN;}
for 	{printf("\nKeyword - for - FOR");return FOR;}
while	{printf("\nKeyword - while - WHILE");return WHILE;}
if	{printf("\nKeyword - if - IF");return IF;}
endif   {printf("\nKeyword - endif - ENDIF"); return ENDIF;}
true    {printf("\nKeyword - ture - TRUE"); return TRUE;}
false   {printf("\nKeyword - false - FALSE"); return FALSE;}
of      {printf("\nKeyword - of - OF");return OF;}
array   {printf("\nKeyword - array - ARRAY");return ARRAY;}
else	{printf("\nKeyword - else - ELSE");return ELSE;}
write  {printf("\nKeyword - write - WRITE");return WRITE;}
read   {printf("\nKeyword - read - READ");return READ;}
struct 	{printf("\nKeyword - struct - STRUCT");return STRUCT;}
^"#include ".+ ;
{digit}+       {printf("\nNumber - NUMBER %s",yytext);return NUM;}
{alpha}({us}|{alpha}|{digit})* {printf("\nIdentifier - IDENT %s",yytext);return IDENT;}
"<="    {printf("\nRelational Operator - <= - LE");return LE;}
">="    {printf("\nRelational Operator - >= - GE");return GE;}
"=="    {printf("\nRelational Operator - == - EQ");return EQ;}
"<>"    {printf("\nRelational Operator - <> - NE");return NE;}
">"	{printf("\nRelational Operator - > - GT");return GT;}
"<"	{printf("\nRelational Operator - < - LT");return LT;}
"."     return DOT;

":="  {printf("\nSpecial Character - := - ASSIGN");return ASSIGN;}
":"   {printf("\nSpecial Character - : - COLON");return ':';}
","   {printf("\nSpecial Character - , - COMMA");return *yytext;}
";"   {printf("\nSpecial Character - ; - SEMICOLON"); return *yytext;}
"("   {printf("\nSpecial Character - ( - L_PAREN"); return *yytext;}
")"   {printf("\nSpecial Character - ) - R_PAREN"); return *yytext;}


"+"   {printf("\nArithemetic Operator - + - ADD");return '+';}
"-"   {printf("\nArithemetic Operator -> - -> SUB");return '-';}
"*"   {printf("\nArithemetic Operator - * - MULT");return '*';}
"/"   {printf("\nArithemetic Operator - / - DIV");return '/';}
"%"   {printf("\nArithemetic Operator - % - MOD");return '%';}

\/\/.* ;
\/\*(.*\n)*.*\*\/ ;
.       return yytext[0];
%%
int yywrap(void) {
 return 1;
}
