%{
  #include "myscanner.h"
%}

%%
"("                         return LEFTPAREN;
")"                         return RIGHTPAREN;
":="                        return ASSIGNMENT;
";"                         return SEMICOLON;
"if"                        return IF;
"then"                      return THEN;
"else"                      return ELSE;
"begin"                     return BEGIN;
"end"                       return END;
"while"                     return WHILE;
"do"                        return DO;
"program"                   return PROGRAM;
"var"                       return VAR;
"as"                        return AS;
"int"                       return INT;
"bool"                      return BOOL;
"writeInt"                  return WRITEINT;
"readInt"                   return READINT;

[1-9][0-9]*|0               return NUMBER;
false|true                  return LITERAL;
"*"|"div"|"mod"             return OP2;
"+"|"-"                     return OP3;
"="|"!="|"<"|">"|"<="|">="  return OP4;
[A-Z][A-Z0-9]*              return IDENTIFIER;
[ \t\n]                     ;
.                           printf("unexpected character\n");
%%
int yywrap(void){
  return 1;
}
