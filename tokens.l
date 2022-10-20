%{
    int i=0;
    char words[13][10] = {"if", "else", "while", "for", "do", "break", "continue", "int", "float", "char", "double", "return", "void"}; 
%}

%%
([a-zA-Z])* {
                for(int x=0;x<13;x++)
                {
                    if(strcmp(yytext,words[x])==0)
                    {
                        i++;
                    }
                }
            }
%%


int main(void)
{
    yyin = fopen("input.txt", "r");
    yylex();
    printf("Total no of keywords: %d \n",i);
    fclose(yyin);
    return 0;
}