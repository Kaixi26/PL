%option noyywrap

sinal [+-]
iss   ([1-9][0-9]*)0
dec   (\.[0-9]+)

%%

\([+-]?((90(\.0+)?)|(([0-8]?[0-9]))(\.[0-9]+)?),\ [+-]?((180(\.0+)?)|((1[0-7][0-9])|(0?[0-9]?[0-9]))(\.[0-9]+)?)\) {
  float lat = atof(strtok(yytext+1, ", "));
  float longitude = atof(strtok(NULL, ")"));
  if(abs(lat) <= 90 && abs(longitude) <= 180)
    printf("VÁLIDO");
  else printf("INVÁLIDO");
}

.+ printf("INVÁLIDO");

%%

int main(){
  yylex();
  return(0);
}

// \([+-]?((90(\.0+)?)|(([0-8]?[0-9]))(\.[0-9]+)?),\ [+-]?((180(\.0+)?)|((1[0-7][0-9])|(0?[0-9]?[0-9]))(\.[0-9]+)?)\) printf("VÁLIDO");

// ^\({sinal}?{iss}{dec},\ {sinal}?{iss}{dec}?\)
