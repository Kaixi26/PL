%option noyywrap
%{
  int chars = 0;
  int words = 0;
  int lines = 0;
%}
%%
\S+   words++; chars+=strlen(yytext);

\n    chars++;lines++;

.     chars++;

%%
int yywrap(){

}

int main(){
  yylex();
  printf("\t%d\t%d\t%d\n", lines, words, chars);
  return(0);
}
