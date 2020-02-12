%option noyywrap
%%
(_|\.)[0-9]+[a-zA-Z]{3,}(_|[a-zA-Z])$    printf("VÁLIDO: %s\n", yytext);

.+    printf("INVÁLIDO: %s\n", yytext);

\n    ;

%%
int main()
{
  yylex();
  return(0);
}

