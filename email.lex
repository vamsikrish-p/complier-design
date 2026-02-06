%{
#include<stdio.h>
%}

%%

[a-z.0-9_]+@[a-z]+(.com|.in) {
printf("the gmail is valid");
}
.+ {
printf("the gmail is not valid:");
}
%%

int main()
{
printf("Enter the email: ");
yylex();
}


int yywrap() {return 1;}
