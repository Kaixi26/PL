%option noyywrap
%%

%%

int main(){
  yylex();
  printf("count : %d\n", count);
  return(0);
}
