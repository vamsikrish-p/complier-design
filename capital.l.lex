%{
#include <stdio.h>
%}

%%
[A-Z]+      { printf("%s", yytext); }
[ \t\n]+    ;
.           ;
%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter the input string:\n");
    yylex();
    return 0;
}
