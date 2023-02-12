%{
#include<stdio.h>
%}
%%
[a|e|i|o|u|A|E|I|O|U] {printf("\n%s is a VOWEL",yytext);}
[^a|e|i|o|u|A|E|I|O|U].+ {printf("\n%s is consonants",yytext);}
%%

int yywrap(){}
int main()
{
while(yylex());
}
Footer
