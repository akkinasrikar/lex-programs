%{
int temp=0;
%}

%%
[a-zA-Z]* { if(temp<=yyleng) {temp=yyleng;} }
. {;}
%%

int main()
{
    yyin=fopen("input.txt","r");
    yylex();
    fclose(yyin);
    printf("%d \n",temp);
    return 0;
}