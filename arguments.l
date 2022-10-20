VARIABLE_NAME [a-zA-Z]([a-zA-Z]|[0-9]|_)*
DATATYPE ("int "|"float "|"double "|"char ")

%{
int count1 = 0,count2=0,count3=0;
%}

%%
{DATATYPE}{VARIABLE_NAME}"()" {count1++;}
{DATATYPE}{VARIABLE_NAME}"("{DATATYPE}{VARIABLE_NAME}")" {count2++;}
{DATATYPE}{VARIABLE_NAME}"("({DATATYPE}{VARIABLE_NAME}",")*{DATATYPE}{VARIABLE_NAME}")" {count3++;}
%%


int main(void)
{
    yyin=fopen("input.txt","r");
    yylex();
    printf("No. of functions with no arguments: %d \n",count1);
    printf("No. of functions with one argument: %d \n",count2);
    printf("No. of functions with more than one argument: %d \n",count3);
    fclose(yyin);
    return 0;
}