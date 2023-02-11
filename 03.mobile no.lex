%{
#include<stdio.h>
%}
%%
[6-9][0-9]{9}+ {printf("\n%s is a mobile number",yytext);}
.+ {printf("\n%s is not a mobile number",yytext);}
%%

int yywrap(){}
int main()
{
while(yylex());
}