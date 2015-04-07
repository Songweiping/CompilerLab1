letter [a-zA-Z]
digit [0-9]
%%
{letter}+ {printf("word:%s\n",yytext);}
{digit}+ {printf("number:%d\n",atoi(yytext));}
. {printf("other charactors:%s\n",yytext);}
%%

