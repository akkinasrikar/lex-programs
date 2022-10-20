/* count all chars and digits */

digit [0-9]
letter [A-Za-z]

%{
    int count=0;
%}

%%

{letter}({letter}|{digit})* count++;

%%

int main(void)
{
    yyin = fopen("input.txt","r");
    yylex();
    printf("Count no of identifiers %d",count);
    fclose(yyin);
    return 0;
}