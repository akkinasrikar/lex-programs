%{
    int n=0,w=0,c=0;
%}

%%
\n {n++;}
[^ \n\t]+ { w++;c+=yyleng;}
. { c++;}
%%

int main()
{
    yyin=fopen("input.txt","r");
    yylex();
    fclose(yyin);
    printf("Number of lines: %d \n",n);
    printf("Number of words: %d \n",w);
    printf("Number of characters: %d \n",c);
    return 0;
}