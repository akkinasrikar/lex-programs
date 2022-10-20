DIGIT [0-9]

%%
\+?{DIGIT}+ { printf("it is positive integer");}
-{DIGIT}+ { printf("it is negative integer");}
\+?{DIGIT}*\.{DIGIT}+ { printf("it is positive float");}
-{DIGIT}*\.{DIGIT}+ { printf("it is negative float");}
%%

int main()
{
    yyin = fopen("input.txt", "r");
    yylex();
    fclose(yyin);
    return 0;
}