package core;

import java_cup.runtime.Symbol;

%%
%cup
%%

"if"                {return new Symbol(Python3Symbols.IF); }
"else "             {return new Symbol(Python3Symbols.ELSE); }
"elif"				{return new Symbol(Python3Symbols.ELIF); }
"for"				{return new Symbol(Python3Symbols.FOR); }
"while"				{return new Symbol(Python3Symbols.WHILE); }
"except"			{return new Symbol(Python3Symbols.EXCEPT); }
"finally"			{return new Symbol(Python3Symbols.FINALLY); }
"with"				{return new Symbol(Python3Symbols.WITH); }
"assert"			{return new Symbol(Python3Symbols.ASSERT); }
"list"				{return new Symbol(Python3Symbols.COMPREHENSION); }
"set"				{return new Symbol(Python3Symbols.COMPREHENSION); }
"dict"				{return new Symbol(Python3Symbols.COMPREHENSION); }
" and "				{return new Symbol(Python3Symbols.AND); }
" or "				{return new Symbol(Python3Symbols.OR); }
":"                 {return new Symbol(Python3Symbols.DOTS);  }
[\n]				{return new Symbol(Python3Symbols.LINE); }
.					{return new Symbol(Python3Symbols.ALPHANUM, yytext()); }

[\"\'].*[\"\']		{/* ignore strigs */}
#.*					{/* ignore comments */}
[ \t\r\f]			{/* ignore white space */}