%{
#include<stdio.h>
#include<string.h>
char word[]="scam";
%}

%%
[a-zA-Z]+ {if(strcmp(word,yytext)==0) printf("found");}
. {;}
%%

int main()
{
    yyin=fopen("input.txt","r");
    yylex();
    fclose(yyin);
    return 0;
}