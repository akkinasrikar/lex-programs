%{
    int count = 0;
%}

%%
[a-zA-Z]([_a-zA-Z0-9])*"@gmail.com" {printf("Valid Email ID\n");}
.+ { printf("Invalid Email ID\n"); }
%%

int main(void)
{
    yyin = fopen("input.txt", "r");
    yylex();
    fclose(yyin);
    return 0;

}