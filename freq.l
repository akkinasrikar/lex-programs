%{
#include<stdio.h>
#include<string.h>
char word[]="geeks";
int count=0;
%}

%%
[a-zA-Z]+ {if(strcmp(word,yytext)==0) count++;}
. {;}
%%

int main()
{
    yyin = fopen("input.txt","r");
    yylex();
    fclose(yyin);
    printf("count=%d",count);
    return 0;
}