/* count no of vowels and consonants */

%{
    int consonent=0,vowel=0;
%}

%%

[aeiouAIOU] {vowel++;}
[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ] {consonent++;}

%%

int main(void)
{
    yyin = fopen("input.txt","r");
    yylex();
    printf("Number of vowels: %d\nNumber of consonents: %d\n",vowel,consonent);
    fclose(yyin);
    return 0;
}