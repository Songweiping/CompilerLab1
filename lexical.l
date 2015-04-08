WS [ 	]
SEMI ";"
COMMA ","
ASSIGNOP "="
RELOP ">"|"<"|">="|"<="|"=="|"!="
PLUS "+"
MINUS "-"
STAR "*"
DIV "/"
AND "&&"
OR "||"
DOT "."
NOT "!"
LP "("
RP ")"
LB "["
RB "]"
LC "{"
RC "}"
letter [_a-zA-Z]
digit [0-9]
INT [+-]?{digit}+
FLOAT [+-]?{digit}*{DOT}{digit}+
ID ({letter})({digit}|{letter})*
WHILE "while"
IF "if"
ELSE "else"
RETURN "return"
STRUCT "struct"
TYPE "int"|"float"
%%
\n {yylineno++;}
{WS}+ {printf("white space\n");}
{LP} {printf("LP:%s\n",yytext);}
{RP} {printf("RP:%s\n",yytext);}
{RELOP} {printf("relop:%s\n",yytext);}
{TYPE} {printf("TYPE:%s\n ",yytext);}
{ID} {printf("ID:%s\n",yytext);}
{INT} {printf("INT:%d\n",atoi(yytext));}
{FLOAT} {printf("FLOAT:%s\n",yytext);}
. {printf("Error type A at Line %d: Mysterious characters \'%s\'\n",yylineno,yytext);}
%%

