%{
#include <stdio.h>
%}

%%
[0-9]+              { printf("%s is INTEGER\n", yytext); }
[0-9]*\.[0-9]+      { printf("%s is FLOAT\n", yytext); }
[a-zA-Z]+           { printf("%s is NOT A DIGIT\n", yytext); }
.|\n                ;
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
