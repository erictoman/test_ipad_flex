
NUM [0-9]+
VARIABLE [0-9]*[A-Za-z]+[0-9]*
COMILLAS ["]
CAD ["""][^"""]+["""]
POW [Pp][Oo][Ww]
DIV [Dd][Ii][Vv]
MOD [Mm][Oo][Dd]
%%


{MOD} {      
                printf("Cadena %s\n",yytext);
                }

{CAD} {      
                printf("Cadena %s\n",yytext);
                }

{NUM}  {
				printf("Numero entero %s\n",yytext);
                }
[0-9]*"."[0-9]+ {
                printf("Numero decimal %s\n",yytext);

                }

"+"|"*"|"-"	 	{
				printf("Signo %s\n",yytext);
                }
"/"             {
                printf("Signo %s\n",yytext);
                }
"\n"            {
				printf("Salto de linea\n\n");
                }
{POW}           {
                printf("Operador POW\n"); 
                }  
{DIV}           {
                printf("Operador DIV\n");   
                }    
"("             {
                printf("Signo apertura\n");           
                }  
","             {
                printf("Signo coma\n");                 
                }   
")"             {
                printf("Signo cierre\n");                     
                }                  
.               ;
{VARIABLE} {      
                printf("Variable %s\n",yytext);
                }

%%