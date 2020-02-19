%{
  int on = 0;
  int sum = 0;
%}

%%
[+-]?[0-9]+ {
  if(on) sum += atoi(yytext);
}

\+ {
  on = !on;
}

= printf("current sum: %d\n", sum);

. ;

%%


int main(){
  yylex();
  printf("sum : %d\n", sum);
  return(0);
}
