%{
    int count=0;
%}

%%
[^ \n]+ {count++;}
%%

int main(void)
{
    yyin = fopen("input.txt", "r");
    yylex();
    printf("no of words: %d", count);
    fclose(yyin);
    return 0;
}