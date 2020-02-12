%option noyywrap
%%
(((2[0-5][0-9])|([01]?[0-9]?[0-9]))\.){3}((2[0-5][0-9])|([01]?[0-9]?[0-9])) printf("IPv4");

(([0-9a-f]){1,4}:){7}(([0-9a-f]){1,4}) printf("IPv6");

.+ printf("Erro");

%%
int main(){
  yylex();
  return(0);
}

