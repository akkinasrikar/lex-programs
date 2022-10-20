%{
    int i,j,flag;
%}

%%
[a-zA-Z0-9]* {
    for(i=0,j=yyleng-1;i<=j;i++,j--)
    {
        if(yytext[i]!=yytext[j])
        {
            flag=0;
            break;
        }
        else
        {
            flag=1;
        }
    }
    if(flag==1)
    {
        printf("Palindrome \n");
    }
    else
    {
        printf("Not Palindrome \n");
    }
}
%%

int main()
{
    yyin=fopen("input.txt","r");
    yylex();
    fclose(yyin);
    return 0;
}