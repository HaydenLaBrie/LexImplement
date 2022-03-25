#include <stdio.h>
#include "myscanner.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

char *names[] = {NULL, "NUMBER", "LITERAL", "IDENTIFIER", "LEFTPAREN", "RIGHTPAREN", "ASSIGNMENT", "SEMICOLON", "OP2", "OP3", "OP4",
"IF", "THEN", "ELSE", "BEGIN", "END", "WHILE", "DO", "PROGRAM", "VAR", "AS", "INT", "BOOL", "WRITEINT", "READINT"};

int main(void){
  int ntoken, vtoken;
  ntoken = yylex();
  while(ntoken){
    // printf("%d\n", ntoken);
    printf("%s is %s\n", yytext, names[ntoken]);
    ntoken = yylex();
  }
  return 0;
}
