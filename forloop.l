op ("++"|"--")
rop ("<"|">"|"<="|">="|"=="|"!=")
id [a-zA-Z_][a-zA-Z0-9]*
no [0-9]*
datatype ("int ")

%%
"for("{datatype}{id}"="{no}";"{id}{rop}{no}";"{id}{op}")" {printf("valid for loop\n");}
.+ {printf("invalid\n");}
%%

int main(void)
{
    yyin = fopen("input.txt", "r");
    yylex();
    fclose(yyin);
    return 0;
}