%{
#include <stdio.h>
int ln = 0;
%}

%%
.*\n      { ln++; fprintf(yyout, "%d: %s", ln, yytext); }
.+        { ln++; fprintf(yyout, "%d: %s\n", ln, yytext); }
%%

int yywrap() {
    return 1;
}

int main() {
    yyin = fopen("simple.txt", "r");
    yyout = fopen("out.txt", "w");
    yylex();
    return 0;
}
