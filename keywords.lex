%{
#include <stdio.h>
%}

%%
if|else|while|int|switch|for|char  
        { printf("%s is KEYWORD\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]*  
        { printf("%s is IDENTIFIER\n", yytext); }

.|\n    ;
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
