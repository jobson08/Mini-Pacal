package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%
begin | 
end | 
if | 
then | 
else | 
while | 
do | 
until | 
repeat | 
integer | 
real | all | 
and | 
or  | 
string | 
Program {lexeme=yytext(); return Reservadas;}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
"=" {return Igual;}
"+" {return Soma;}
"-" {return Resto;}
"*" {return Multiplica;}
"/" {return Divisao;}
{L}({L}|{D})* {lexeme=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}


 
