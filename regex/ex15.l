%option noyywrap
%{
  int count = 0;
  void add_valido(char* str){
    printf("VALIDO %d\t: %s\n", ++count, str);
  }

%}

dd [0-9]{2}
%%
({dd}\.{3}){3}{dd} add_valido(yytext);

({dd}-){3}{dd} add_valido(yytext);

({dd}:){3}{dd} add_valido(yytext);

.    ;

%%

//int yywrap(){
//printf("count : %d\n", count);
//}

int main(){
  yylex();
  printf("count : %d\n", count);
  return(0);
}
