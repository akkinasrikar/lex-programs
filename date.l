%{
    int a=0,b=0;
%}

/* 01-31 | 01-12*/

%%
([0-2][0-9]|3[0-1])\/(0[1-9]|1[1-2])\/([1-2][0-9][0-9][0-9]) { printf("Valid Date\n"); }
.+ { printf("Invalid Date\n"); }
%%

int main(void)
{
    yyin = fopen("input.txt","r");
    yylex();
    fclose(yyin);
    return 0;
}