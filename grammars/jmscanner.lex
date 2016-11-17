//------------------------------------------------------------------------------
// JavaLex specification for a subset of LaTeX language
// Created by Alexandre A. Barbosa
// September 2006
// Read ./doc/LaTeX - Symbols.pdf to see the symbols that are supported. 
// Source code: jmscanner.lex
//------------------------------------------------------------------------------
package jezmath;

import java_cup.runtime.Symbol;

%%

%{
	private Symbol create(String code) {
		if (code.equals("+"))        { return new Symbol(JMSymbols.symbol, "+");
		} else if (code.equals("-")) { return new Symbol(JMSymbols.symbol, "-");
		} else if (code.equals("=")) { return new Symbol(JMSymbols.symbol, "=");
		} else if (code.equals(">")) { return new Symbol(JMSymbols.symbol, ">");
		} else if (code.equals("<")) { return new Symbol(JMSymbols.symbol, "<");
		} else if (code.equals("*")) { return new Symbol(JMSymbols.symbol, "*");
		} else if (code.equals("/")) { return new Symbol(JMSymbols.symbol, "/");
		} else if (code.equals("(")) { return new Symbol(JMSymbols.symbol, "(");
		} else if (code.equals(")")) { return new Symbol(JMSymbols.symbol, ")");
		} else if (code.equals("!")) { return new Symbol(JMSymbols.symbol, "!");
		} else if (code.equals("?")) { return new Symbol(JMSymbols.symbol, "?");
		} else if (code.equals("%")) { return new Symbol(JMSymbols.symbol, "%");
		} else if (code.equals(".")) { return new Symbol(JMSymbols.symbol, ".");
		} else if (code.equals(",")) { return new Symbol(JMSymbols.symbol, ",");
		} else if (code.equals("&")) { return new Symbol(JMSymbols.symbol, "&");
		} else if (code.equals("@")) { return new Symbol(JMSymbols.symbol, "@");
		} else if (code.equals("#")) { return new Symbol(JMSymbols.symbol, "#");
		} else if (code.equals("\\rcolchete")) { return new Symbol(JMSymbols.symbol, "[");
		} else if (code.equals("\\lcolchete")) { return new Symbol(JMSymbols.symbol, "]"); 
		}
	    // Greek letters
		if (code.equals("\\alpha"))              { return new Symbol(JMSymbols.symbol, "\u03B1");
		} else if (code.equals("\\beta"))        { return new Symbol(JMSymbols.symbol, "\u03B2");
		} else if (code.equals("\\chi"))         { return new Symbol(JMSymbols.symbol, "\u03C7");
		} else if (code.equals("\\delta"))       { return new Symbol(JMSymbols.symbol, "\u03B4");
		} else if (code.equals("\\epsilon"))     { return new Symbol(JMSymbols.symbol, "\u03F5");
		} else if (code.equals("\\eta"))         { return new Symbol(JMSymbols.symbol, "\u03B7");
		} else if (code.equals("\\gamma"))       { return new Symbol(JMSymbols.symbol, "\u03B3");
		} else if (code.equals("\\iota"))        { return new Symbol(JMSymbols.symbol, "\u03B9");
		} else if (code.equals("\\kappa"))       { return new Symbol(JMSymbols.symbol, "\u03BA");
		} else if (code.equals("\\lambda"))      { return new Symbol(JMSymbols.symbol, "\u03BB");
		} else if (code.equals("\\mu"))          { return new Symbol(JMSymbols.symbol, "\u03BC");
		} else if (code.equals("\\nu"))          { return new Symbol(JMSymbols.symbol, "\u03BD");
		} else if (code.equals("\\o"))           { return new Symbol(JMSymbols.symbol, "\u03BF");
		} else if (code.equals("\\omega"))       { return new Symbol(JMSymbols.symbol, "\u03C9");
		} else if (code.equals("\\phi"))         { return new Symbol(JMSymbols.symbol, "\u03D5");
		} else if (code.equals("\\pi"))          { return new Symbol(JMSymbols.symbol, "\u03C0");
		} else if (code.equals("\\psi"))         { return new Symbol(JMSymbols.symbol, "\u03C8");
		} else if (code.equals("\\rho"))         { return new Symbol(JMSymbols.symbol, "\u03C1");
		} else if (code.equals("\\sigma"))       { return new Symbol(JMSymbols.symbol, "\u03C3");
		} else if (code.equals("\\tau"))         { return new Symbol(JMSymbols.symbol, "\u03C4");
		} else if (code.equals("\\theta"))       { return new Symbol(JMSymbols.symbol, "\u03B8");
		} else if (code.equals("\\upsilon"))     { return new Symbol(JMSymbols.symbol, "\u03C5");
		} else if (code.equals("\\xi"))          { return new Symbol(JMSymbols.symbol, "\u03BE");
		} else if (code.equals("\\zeta"))        { return new Symbol(JMSymbols.symbol, "\u03B6");
		} else if (code.equals("\\digamma"))     { return new Symbol(JMSymbols.symbol, "\u03DD");
		} else if (code.equals("\\varepsilon"))  { return new Symbol(JMSymbols.symbol, "\u03B5");
		} else if (code.equals("\\varkappa"))    { return new Symbol(JMSymbols.symbol, "\u03F0");
		} else if (code.equals("\\varphi"))      { return new Symbol(JMSymbols.symbol, "\u03C6");
		} else if (code.equals("\\varpi"))       { return new Symbol(JMSymbols.symbol, "\u03D6");
		} else if (code.equals("\\varrho"))      { return new Symbol(JMSymbols.symbol, "\u03F1");
		} else if (code.equals("\\varsigma"))    { return new Symbol(JMSymbols.symbol, "\u03DB");
		} else if (code.equals("\\vartheta"))    { return new Symbol(JMSymbols.symbol, "\u03D1");
		} else if (code.equals("\\Delta"))       { return new Symbol(JMSymbols.symbol, "\u0394");
		} else if (code.equals("\\Gamma"))       { return new Symbol(JMSymbols.symbol, "\u0393");
		} else if (code.equals("\\Lambda"))      { return new Symbol(JMSymbols.symbol, "\u039B");
		} else if (code.equals("\\Omega"))       { return new Symbol(JMSymbols.symbol, "\u03A9");
		} else if (code.equals("\\Phi"))         { return new Symbol(JMSymbols.symbol, "\u03A6");
		} else if (code.equals("\\Pi"))          { return new Symbol(JMSymbols.symbol, "\u03A0");
		} else if (code.equals("\\Psi"))         { return new Symbol(JMSymbols.symbol, "\u03A8");
		} else if (code.equals("\\Sigma"))       { return new Symbol(JMSymbols.symbol, "\u03A3");
		} else if (code.equals("\\Theta"))       { return new Symbol(JMSymbols.symbol, "\u03F4");
		} else if (code.equals("\\Upsilon"))     { return new Symbol(JMSymbols.symbol, "\u03D2");
		} else if (code.equals("\\Xi"))          { return new Symbol(JMSymbols.symbol, "\u039E");
		}
		// Delimiters
		if (code.equals("|"))                   { return new Symbol(JMSymbols.symbol, "|");
		} else if (code.equals("\\vert"))        { return new Symbol(JMSymbols.symbol, "|");
		} else if (code.equals("\\|"))           { return new Symbol(JMSymbols.symbol, "||");
		} else if (code.equals("\\Vert"))        { return new Symbol(JMSymbols.symbol, "||");
		} else if (code.equals("\\{"))           { return new Symbol(JMSymbols.symbol, "{");
		} else if (code.equals("\\}"))           { return new Symbol(JMSymbols.symbol, "}");
		} else if (code.equals("\\langle"))      { return new Symbol(JMSymbols.symbol, "\u3008");
		} else if (code.equals("\\rangle"))      { return new Symbol(JMSymbols.symbol, "\u3009");
		} else if (code.equals("\\lfloor"))      { return new Symbol(JMSymbols.symbol, "\u230A");
		} else if (code.equals("\\rfloor"))      { return new Symbol(JMSymbols.symbol, "\u230B");
		} else if (code.equals("\\lceil"))       { return new Symbol(JMSymbols.symbol, "\u2308");
		} else if (code.equals("\\rceil"))       { return new Symbol(JMSymbols.symbol, "\u2309");
		} else if (code.equals("/"))             { return new Symbol(JMSymbols.symbol, "/");
		} else if (code.equals("\\blackslash"))  { return new Symbol(JMSymbols.symbol, "\\");
		} else if (code.equals("\\llcorner"))    { return new Symbol(JMSymbols.symbol, "\u231E");
		} else if (code.equals("\\lrcorner"))    { return new Symbol(JMSymbols.symbol, "\u231F");
		} else if (code.equals("\\ulcorner"))    { return new Symbol(JMSymbols.symbol, "\u231C");
		} else if (code.equals("\\urcorner"))    { return new Symbol(JMSymbols.symbol, "\u231D");
		} else if (code.equals("\\leftC"))       { return new Symbol(JMSymbols.bigsymbol, "[");
		} else if (code.equals("\\rightC"))      { return new Symbol(JMSymbols.bigsymbol, "]");
		} else if (code.equals("\\leftP"))       { return new Symbol(JMSymbols.bigsymbol, "(");
		} else if (code.equals("\\rightP"))      { return new Symbol(JMSymbols.bigsymbol, ")");
		}
		// Variable-sized symbols
		if (code.equals("\\sum"))               { return new Symbol(JMSymbols.bigsymbol, "\u2211");
		} else if (code.equals("\\prod"))       { return new Symbol(JMSymbols.bigsymbol, "\u220F");
		} else if (code.equals("\\coprod"))     { return new Symbol(JMSymbols.bigsymbol, "\u2210");
		} else if (code.equals("\\int"))        { return new Symbol(JMSymbols.bigsymbol, "\u222B");
		} else if (code.equals("\\oint"))       { return new Symbol(JMSymbols.bigsymbol, "\u222E"); 
		} else if (code.equals("\\biguplus"))   { return new Symbol(JMSymbols.bigsymbol, "\u228E");
		} else if (code.equals("\\bigcap"))     { return new Symbol(JMSymbols.bigsymbol, "\u22C2");
		} else if (code.equals("\\bigcup"))     { return new Symbol(JMSymbols.bigsymbol, "\u22C3");
		} else if (code.equals("\\bigoplus"))   { return new Symbol(JMSymbols.bigsymbol, "\u2295");
		} else if (code.equals("\\bigotimes"))  { return new Symbol(JMSymbols.bigsymbol, "\u2297");
		} else if (code.equals("\\bigodot"))    { return new Symbol(JMSymbols.bigsymbol, "\u2299");
		} else if (code.equals("\\bigvee"))     { return new Symbol(JMSymbols.bigsymbol, "\u22C1");
		} else if (code.equals("\\bigwedge"))   { return new Symbol(JMSymbols.bigsymbol, "\u22C0");
		} else if (code.equals("\\bigsqcup"))   { return new Symbol(JMSymbols.bigsymbol, "\u2294");
		}
		// Standard Function Names
		if (code.equals("\\arcos"))          { return new Symbol(JMSymbols.italicsymbol, "arcos");
		} else if (code.equals("\\cos"))     { return new Symbol(JMSymbols.italicsymbol, "cos");
		} else if (code.equals("\\csc"))     { return new Symbol(JMSymbols.italicsymbol, "csc");
		} else if (code.equals("\\exp"))     { return new Symbol(JMSymbols.italicsymbol, "exp");
		} else if (code.equals("\\ker"))     { return new Symbol(JMSymbols.italicsymbol, "ker");
		} else if (code.equals("\\limsup"))  { return new Symbol(JMSymbols.italicsymbol, "limsup");
		} else if (code.equals("\\min"))     { return new Symbol(JMSymbols.italicsymbol, "min");
		} else if (code.equals("\\sinh"))    { return new Symbol(JMSymbols.italicsymbol, "sinh");
		} else if (code.equals("\\arcsin"))  { return new Symbol(JMSymbols.italicsymbol, "arcsin");
		} else if (code.equals("\\cosh"))    { return new Symbol(JMSymbols.italicsymbol, "cosh");
		} else if (code.equals("\\deg"))     { return new Symbol(JMSymbols.italicsymbol, "deg");
		} else if (code.equals("\\gcd"))     { return new Symbol(JMSymbols.italicsymbol, "gcd");
		} else if (code.equals("\\lg"))      { return new Symbol(JMSymbols.italicsymbol, "lg");
		} else if (code.equals("\\ln"))      { return new Symbol(JMSymbols.italicsymbol, "ln");
		} else if (code.equals("\\Pr"))      { return new Symbol(JMSymbols.italicsymbol, "Pr");
		} else if (code.equals("\\sup"))     { return new Symbol(JMSymbols.italicsymbol, "sup");
		} else if (code.equals("\\arctan"))  { return new Symbol(JMSymbols.italicsymbol, "arctan");
		} else if (code.equals("\\cot"))     { return new Symbol(JMSymbols.italicsymbol, "cot");
		} else if (code.equals("\\det"))     { return new Symbol(JMSymbols.italicsymbol, "det");
		} else if (code.equals("\\hom"))     { return new Symbol(JMSymbols.italicsymbol, "hom");
		} else if (code.equals("\\lim"))     { return new Symbol(JMSymbols.italicsymbol, "lim");
		} else if (code.equals("\\log"))     { return new Symbol(JMSymbols.italicsymbol, "log");
		} else if (code.equals("\\sec"))     { return new Symbol(JMSymbols.italicsymbol, "sec");
		} else if (code.equals("\\tan"))     { return new Symbol(JMSymbols.italicsymbol, "tan");
		} else if (code.equals("\\arg"))     { return new Symbol(JMSymbols.italicsymbol, "arg");
		} else if (code.equals("\\coth"))    { return new Symbol(JMSymbols.italicsymbol, "coth"); 
		} else if (code.equals("\\dim"))     { return new Symbol(JMSymbols.italicsymbol, "dim");
		} else if (code.equals("\\inf"))     { return new Symbol(JMSymbols.italicsymbol, "inf");
		} else if (code.equals("\\liminf"))  { return new Symbol(JMSymbols.italicsymbol, "liminf");
		} else if (code.equals("\\max"))     { return new Symbol(JMSymbols.italicsymbol, "max");
		} else if (code.equals("\\sin"))     { return new Symbol(JMSymbols.italicsymbol, "sin");
		} else if (code.equals("\\tanh"))    { return new Symbol(JMSymbols.italicsymbol, "tanh");
		}
		// Binary Operation/Relation Symbols
		if (code.equals("\\ast"))                      { return new Symbol(JMSymbols.symbol, "\u2217");
		} else if (code.equals("\\star"))              { return new Symbol(JMSymbols.symbol, "\u22C6");
		} else if (code.equals("\\cdot"))              { return new Symbol(JMSymbols.symbol, "\u22C5"); 
		} else if (code.equals("\\circ"))              { return new Symbol(JMSymbols.symbol, "\u2218");
		} else if (code.equals("\\bullet"))            { return new Symbol(JMSymbols.symbol, "\u2219");
		} else if (code.equals("\\bigcirc"))           { return new Symbol(JMSymbols.bigsymbol, "\u25CB");
		} else if (code.equals("\\diamond"))           { return new Symbol(JMSymbols.symbol, "\u25CA");
		} else if (code.equals("\\times"))             { return new Symbol(JMSymbols.symbol, "\u00D7");
		} else if (code.equals("\\div"))               { return new Symbol(JMSymbols.symbol, "\u00F7");
		} else if (code.equals("\\circledast"))        { return new Symbol(JMSymbols.symbol, "\u229B");
		} else if (code.equals("\\circledcirc"))       { return new Symbol(JMSymbols.symbol, "\u229A");
		} else if (code.equals("\\circleddash"))       { return new Symbol(JMSymbols.symbol, "\u229D");
		} else if (code.equals("\\equiv"))             { return new Symbol(JMSymbols.symbol, "\u2261");
		} else if (code.equals("\\cong"))              { return new Symbol(JMSymbols.symbol, "\u2245");
		} else if (code.equals("\\neq"))               { return new Symbol(JMSymbols.symbol, "\u2260");
		} else if (code.equals("\\sim"))               { return new Symbol(JMSymbols.symbol, "\u223C");
		} else if (code.equals("\\simeq"))             { return new Symbol(JMSymbols.symbol, "\u2243");
		} else if (code.equals("\\approx"))            { return new Symbol(JMSymbols.symbol, "\u2248");
		} else if (code.equals("\\asymp"))             { return new Symbol(JMSymbols.symbol, "\u224D");
		} else if (code.equals("\\doteq"))             { return new Symbol(JMSymbols.symbol, "\u2250");
		} else if (code.equals("\\propto"))            { return new Symbol(JMSymbols.symbol, "\u221D");
		} else if (code.equals("\\models"))            { return new Symbol(JMSymbols.symbol, "\u22A7");
		} else if (code.equals("\\approxeq"))          { return new Symbol(JMSymbols.symbol, "\u224A");
		} else if (code.equals("\\backsim"))           { return new Symbol(JMSymbols.symbol, "\u223D");
		} else if (code.equals("\\triangleq"))         { return new Symbol(JMSymbols.symbol, "\u225C");
		} else if (code.equals("\\circeq"))            { return new Symbol(JMSymbols.symbol, "\u2257");
		} else if (code.equals("\\bumpeq"))            { return new Symbol(JMSymbols.symbol, "\u224F");
		} else if (code.equals("\\Bumpeq"))            { return new Symbol(JMSymbols.symbol, "\u224E");
		} else if (code.equals("\\doteqdot"))          { return new Symbol(JMSymbols.symbol, "\u2251");
		} else if (code.equals("\\fallingdotseq"))     { return new Symbol(JMSymbols.symbol, "\u2252");
		} else if (code.equals("\\risingdotseq"))      { return new Symbol(JMSymbols.symbol, "\u2253");
		} else if (code.equals("\\therefore"))         { return new Symbol(JMSymbols.symbol, "\u2234");
		} else if (code.equals("\\because"))           { return new Symbol(JMSymbols.symbol, "\u2235");
		} else if (code.equals("\\eqcirc"))            { return new Symbol(JMSymbols.symbol, "\u2256");
		} else if (code.equals("\\ncong"))             { return new Symbol(JMSymbols.symbol, "\u2247");
		} else if (code.equals("\\nmid"))              { return new Symbol(JMSymbols.symbol, "\u2224");
		} else if (code.equals("\\nparallel"))         { return new Symbol(JMSymbols.symbol, "\u2226");
		} else if (code.equals("\\nsim"))              { return new Symbol(JMSymbols.symbol, "\u2241");
		} else if (code.equals("\\nVDash"))            { return new Symbol(JMSymbols.symbol, "\u22AF");
		} else if (code.equals("\\nvDash"))            { return new Symbol(JMSymbols.symbol, "\u22AD");
		} else if (code.equals("\\nvdash"))            { return new Symbol(JMSymbols.symbol, "\u22AC");
		} else if (code.equals("\\pm"))                { return new Symbol(JMSymbols.symbol, "\u00B1");
		} else if (code.equals("\\mp"))                { return new Symbol(JMSymbols.symbol, "\u2213");
		} else if (code.equals("\\odot"))              { return new Symbol(JMSymbols.symbol, "\u2299");
		} else if (code.equals("\\ominus"))            { return new Symbol(JMSymbols.symbol, "\u2296");
		} else if (code.equals("\\oplus"))             { return new Symbol(JMSymbols.symbol, "\u2295");
		} else if (code.equals("\\oslash"))            { return new Symbol(JMSymbols.symbol, "\u2298");
		} else if (code.equals("\\otimes"))            { return new Symbol(JMSymbols.symbol, "\u2297");
		} else if (code.equals("\\wr"))                { return new Symbol(JMSymbols.symbol, "\u2240");
		} else if (code.equals("\\boxplus"))           { return new Symbol(JMSymbols.symbol, "\u229E");
		} else if (code.equals("\\boxminus"))          { return new Symbol(JMSymbols.symbol, "\u229F");
		} else if (code.equals("\\boxtimes"))          { return new Symbol(JMSymbols.symbol, "\u22A0");
		} else if (code.equals("\\boxdot"))            { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\square"))            { return new Symbol(JMSymbols.symbol, "\u29E0");
		} else if (code.equals("\\leq"))               { return new Symbol(JMSymbols.symbol, "\u2264");
		} else if (code.equals("\\prec"))              { return new Symbol(JMSymbols.symbol, "\u227A");
		} else if (code.equals("\\subset"))            { return new Symbol(JMSymbols.symbol, "\u2282");
		} else if (code.equals("\\subseteq"))          { return new Symbol(JMSymbols.symbol, "\u2286");
		} else if (code.equals("\\sqsubset"))          { return new Symbol(JMSymbols.symbol, "\u228F");
		} else if (code.equals("\\sqsubseteq"))        { return new Symbol(JMSymbols.symbol, "\u2291");
		} else if (code.equals("\\dashv"))             { return new Symbol(JMSymbols.symbol, "\u22A3");
		} else if (code.equals("\\in"))                { return new Symbol(JMSymbols.symbol, "\u2208");
		} else if (code.equals("\\leqq"))              { return new Symbol(JMSymbols.symbol, "\u2266");
		} else if (code.equals("\\leqslant"))          { return new Symbol(JMSymbols.symbol, "\u2A7D");
		} else if (code.equals("\\lessapprox"))        { return new Symbol(JMSymbols.symbol, "\u2A85");
		} else if (code.equals("\\lesssim"))           { return new Symbol(JMSymbols.symbol, "\u2272");
		} else if (code.equals("\\eqslantless"))       { return new Symbol(JMSymbols.symbol, "\u2A95");
		} else if (code.equals("\\precsim"))           { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\precapprox"))        { return new Symbol(JMSymbols.symbol, "\u2AB7");
		} else if (code.equals("\\Subset"))            { return new Symbol(JMSymbols.symbol, "\u22D0");
		} else if (code.equals("\\subseteqq"))         { return new Symbol(JMSymbols.symbol, "\u2AC5");
		} else if (code.equals("\\preccurlyeq"))       { return new Symbol(JMSymbols.symbol, "\u227C");
		} else if (code.equals("\\curlyeqprec"))       { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\blacktriangleleft")) { return new Symbol(JMSymbols.symbol, "\u25C0");
		} else if (code.equals("\\trianglelefteq"))    { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\vartriangleleft"))   { return new Symbol(JMSymbols.symbol, "\u25C1");
		} else if (code.equals("\\nleq"))              { return new Symbol(JMSymbols.symbol, "\u2270");
		} else if (code.equals("\\nleqq"))             { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\nleqslant"))         { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\nless"))             { return new Symbol(JMSymbols.symbol, "\u226E");
		} else if (code.equals("\\nprec"))             { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\npreceq"))           { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\precnapprox"))       { return new Symbol(JMSymbols.symbol, "\u2AB9");
		} else if (code.equals("\\precnsim"))          { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\lnapprox"))          { return new Symbol(JMSymbols.symbol, "\u2A89");
		} else if (code.equals("\\lneq"))              { return new Symbol(JMSymbols.symbol, "\u2A87");
		} else if (code.equals("\\lneqq"))             { return new Symbol(JMSymbols.symbol, "\u2268");
		} else if (code.equals("\\lnsim"))             { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\lvertneqq"))         { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\cap"))               { return new Symbol(JMSymbols.symbol, "\u2229");
		} else if (code.equals("\\cup"))               { return new Symbol(JMSymbols.symbol, "\u222A");
		} else if (code.equals("\\uplus"))             { return new Symbol(JMSymbols.symbol, "\u228E");
		} else if (code.equals("\\sqcap"))             { return new Symbol(JMSymbols.symbol, "\u2293");
		} else if (code.equals("\\sqcup"))             { return new Symbol(JMSymbols.symbol, "\u2294");
		} else if (code.equals("\\wedge"))             { return new Symbol(JMSymbols.symbol, "\u22C0");
		} else if (code.equals("\\vee"))               { return new Symbol(JMSymbols.symbol, "\u22C1");
		} else if (code.equals("\\dagger"))            { return new Symbol(JMSymbols.symbol, "\u2020");
		} else if (code.equals("\\ddagger"))           { return new Symbol(JMSymbols.symbol, "\u2021");
		} else if (code.equals("\\barwedge"))          { return new Symbol(JMSymbols.symbol, "\u22BC");
		} else if (code.equals("\\curlywedge"))        { return new Symbol(JMSymbols.symbol, "\u22CF");
		} else if (code.equals("\\Cap"))               { return new Symbol(JMSymbols.symbol, "\u22D2");
		} else if (code.equals("\\bot"))               { return new Symbol(JMSymbols.symbol, "\u22A5");
		} else if (code.equals("\\doublebarwedge"))    { return new Symbol(JMSymbols.symbol, "\u2A5E");
		} else if (code.equals("\\geq"))               { return new Symbol(JMSymbols.symbol, "\u2265");
		} else if (code.equals("\\succ"))              { return new Symbol(JMSymbols.symbol, "\u227B");
		} else if (code.equals("\\succeq"))            { return new Symbol(JMSymbols.symbol, "\u2A80");
		} else if (code.equals("\\supset"))            { return new Symbol(JMSymbols.symbol, "\u2283");
		} else if (code.equals("\\supseteq"))          { return new Symbol(JMSymbols.symbol, "\u2287");
		} else if (code.equals("\\sqsupset"))          { return new Symbol(JMSymbols.symbol, "\u2290");
		} else if (code.equals("\\sqsupseteq"))        { return new Symbol(JMSymbols.symbol, "\u2292");
		} else if (code.equals("\\vdash"))             { return new Symbol(JMSymbols.symbol, "\u22A6");
		} else if (code.equals("\\ni"))                { return new Symbol(JMSymbols.symbol, "\u220B");
		} else if (code.equals("\\geqq"))              { return new Symbol(JMSymbols.symbol, "\u2267");
		} else if (code.equals("\\geqslant"))          { return new Symbol(JMSymbols.symbol, "\u2A7E");
		} else if (code.equals("\\gtrapprox"))         { return new Symbol(JMSymbols.symbol, "\u2A86");
		} else if (code.equals("\\gtrsim"))            { return new Symbol(JMSymbols.symbol, "\u2273");
		} else if (code.equals("\\eqslantgtr"))        { return new Symbol(JMSymbols.symbol, "\u2A96");
		} else if (code.equals("\\succsim"))           { return new Symbol(JMSymbols.symbol, "\u227F");
		} else if (code.equals("\\succapprox"))        { return new Symbol(JMSymbols.symbol, "\u22D1");
		} else if (code.equals("\\Supset"))            { return new Symbol(JMSymbols.symbol, "\u22D1");
		} else if (code.equals("\\supseteqq"))         { return new Symbol(JMSymbols.symbol, "\u2AC6");
		} else if (code.equals("\\sqsupset"))          { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\succcurlyeq"))       { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\curlyeqsucc"))       { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\blacktriangleright")){ return new Symbol(JMSymbols.symbol, "\u25B6");
		} else if (code.equals("\\trianglerighteq"))   { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\vartriangleright"))  { return new Symbol(JMSymbols.symbol, "\u25B7");
		} else if (code.equals("\\ngeq"))              { return new Symbol(JMSymbols.symbol, "\u2271");
		} else if (code.equals("\\ngeqq"))             { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\ngeqslant"))         { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\ngtr"))              { return new Symbol(JMSymbols.symbol, "\u226F");
		} else if (code.equals("\\nsucc"))             { return new Symbol(JMSymbols.symbol, "\u2281");
		} else if (code.equals("\\nsucceq"))           { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\succnapprox"))       { return new Symbol(JMSymbols.symbol, "\u2ABA");
		} else if (code.equals("\\succnsim"))          { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\gnapprox"))          { return new Symbol(JMSymbols.symbol, "\u2A8A");
		} else if (code.equals("\\gneq"))              { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\gneqq"))             { return new Symbol(JMSymbols.symbol, "\u2269");
		} else if (code.equals("\\gnsim"))             { return new Symbol(JMSymbols.symbol, "\u22E7");
		} else if (code.equals("\\gvertneqq"))         { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\lhd"))               { return new Symbol(JMSymbols.symbol, "\u22B2");
		} else if (code.equals("\\rhd"))               { return new Symbol(JMSymbols.symbol, "\u22B3");
		} else if (code.equals("\\triangleleft"))      { return new Symbol(JMSymbols.symbol, "\u25C1");
		} else if (code.equals("\\triangleright"))     { return new Symbol(JMSymbols.symbol, "\u25B7");
		} else if (code.equals("\\unlhd"))             { return new Symbol(JMSymbols.symbol, "\u22B4");
		} else if (code.equals("\\unrhd"))             { return new Symbol(JMSymbols.symbol, "\u22B5");
		} else if (code.equals("\\bigtriangledown"))   { return new Symbol(JMSymbols.symbol, "\u25BD");
		} else if (code.equals("\\bigtriangleup"))     { return new Symbol(JMSymbols.symbol, "\u25B3");
		} else if (code.equals("\\veebar"))            { return new Symbol(JMSymbols.symbol, "\u22BB");
		} else if (code.equals("\\curlyvee"))          { return new Symbol(JMSymbols.symbol, "\u22CE");
		} else if (code.equals("\\Cup"))               { return new Symbol(JMSymbols.symbol, "\u22D3");
		} else if (code.equals("\\top"))               { return new Symbol(JMSymbols.symbol, "\u22A4");
		} else if (code.equals("\\rightthreetimes"))   { return new Symbol(JMSymbols.symbol, "\u22CC");
		} else if (code.equals("\\leftthreetimes"))    { return new Symbol(JMSymbols.symbol, "\u22CB");
		} else if (code.equals("\\perp"))              { return new Symbol(JMSymbols.symbol, "\u22A5");
		} else if (code.equals("\\Join"))              { return new Symbol(JMSymbols.symbol, "\u22C8");
		} else if (code.equals("\\ltimes"))            { return new Symbol(JMSymbols.symbol, "\u22C9");
		} else if (code.equals("\\rtimes"))            { return new Symbol(JMSymbols.symbol, "\u22CA");
		} else if (code.equals("\\smile"))             { return new Symbol(JMSymbols.symbol, "\u2323");
		} else if (code.equals("\\frown"))             { return new Symbol(JMSymbols.symbol, "\u2322");
		} else if (code.equals("\\notin"))             { return new Symbol(JMSymbols.symbol, "\u2209");
		} else if (code.equals("\\lessgtr"))           { return new Symbol(JMSymbols.symbol, "\u2276");
		} else if (code.equals("\\lesseqgtr"))         { return new Symbol(JMSymbols.symbol, "\u22DA");
		} else if (code.equals("\\lesseqqgtr"))        { return new Symbol(JMSymbols.symbol, "\u2A8B");
		} else if (code.equals("\\gtreqqless"))        { return new Symbol(JMSymbols.symbol, "\u2A8C");
		} else if (code.equals("\\gtreqless"))         { return new Symbol(JMSymbols.symbol, "\u22DB");
		} else if (code.equals("\\gtrless"))           { return new Symbol(JMSymbols.symbol, "\u2277");
		} else if (code.equals("\\backepsilon"))       { return new Symbol(JMSymbols.symbol, "\u025C");
		} else if (code.equals("\\between"))           { return new Symbol(JMSymbols.symbol, "\u22C6");
		} else if (code.equals("\\pitchfork"))         { return new Symbol(JMSymbols.symbol, "\u22D4");
		} else if (code.equals("\\Vdash"))             { return new Symbol(JMSymbols.symbol, "\u22A9");
		} else if (code.equals("\\vDash"))             { return new Symbol(JMSymbols.symbol, "\u22A7");
		} else if (code.equals("\\Vvdash"))            { return new Symbol(JMSymbols.symbol, "\u22AA");
		} else if (code.equals("\\nsubseteq"))         { return new Symbol(JMSymbols.symbol, "\u2288");
		} else if (code.equals("\\nsupseteq"))         { return new Symbol(JMSymbols.symbol, "\u2289");
		} else if (code.equals("\\nsubseteqq"))        { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\nsupseteqq"))        { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\subsetneq"))         { return new Symbol(JMSymbols.symbol, "\u228A");
		} else if (code.equals("\\supsetneq"))         { return new Symbol(JMSymbols.symbol, "\u228B");
		} else if (code.equals("\\subsetneqq"))        { return new Symbol(JMSymbols.symbol, "\u22A1");
		} else if (code.equals("\\supsetneqq"))        { return new Symbol(JMSymbols.symbol, "\u29E0");
		}
		// Arrow symbols
		if (code.equals("\\leftarrow"))                  { return new Symbol(JMSymbols.symbol, "\u2190");
		} else if (code.equals("\\Leftarrow"))           { return new Symbol(JMSymbols.symbol, "\u21D0");
		} else if (code.equals("\\rightarrow"))          { return new Symbol(JMSymbols.symbol, "\u2192");
		} else if (code.equals("\\Rightarrow"))          { return new Symbol(JMSymbols.symbol, "\u21D2");
		} else if (code.equals("\\leftrightarrow"))      { return new Symbol(JMSymbols.symbol, "\u2194");
		} else if (code.equals("\\Leftrightarrow"))      { return new Symbol(JMSymbols.symbol, "\u21D4");
		} else if (code.equals("\\mapsto"))              { return new Symbol(JMSymbols.symbol, "\u21A6");
		} else if (code.equals("\\hookleftarrow"))       { return new Symbol(JMSymbols.symbol, "\u21A9");
		} else if (code.equals("\\leftharpoonup"))       { return new Symbol(JMSymbols.symbol, "\u21BC");
		} else if (code.equals("\\leftharpoondown"))     { return new Symbol(JMSymbols.symbol, "\u21BD");
		} else if (code.equals("\\rightleftharpoons"))   { return new Symbol(JMSymbols.symbol, "\u21CC");
		} else if (code.equals("\\dashrightarrow"))      { return new Symbol(JMSymbols.symbol, "\u21E2");
		} else if (code.equals("\\leftrightarrows"))     { return new Symbol(JMSymbols.symbol, "\u21C6");
		} else if (code.equals("\\leftarrowtail"))       { return new Symbol(JMSymbols.symbol, "\u21A2");
		} else if (code.equals("\\curvearrowleft"))      { return new Symbol(JMSymbols.symbol, "\u21B6");
		} else if (code.equals("\\upuparrows"))          { return new Symbol(JMSymbols.symbol, "\u21C8");
		} else if (code.equals("\\multimap"))            { return new Symbol(JMSymbols.symbol, "\u22B8");
		} else if (code.equals("\\rightleftarrows"))     { return new Symbol(JMSymbols.symbol, "\u21C4");
		} else if (code.equals("\\twoheadrightarrow"))   { return new Symbol(JMSymbols.symbol, "\u21A0");
		} else if (code.equals("\\rightleftharpoons"))   { return new Symbol(JMSymbols.symbol, "\u21CC");
		} else if (code.equals("\\Rsh"))                 { return new Symbol(JMSymbols.symbol, "\u21B1");
		} else if (code.equals("\\downharpoonright"))    { return new Symbol(JMSymbols.symbol, "\u21C2");
		} else if (code.equals("\\nleftarrow"))          { return new Symbol(JMSymbols.symbol, "\u219A");
		} else if (code.equals("\\nRightarrow"))         { return new Symbol(JMSymbols.symbol, "\u21CF");
		} else if (code.equals("\\hookrightarrow"))      { return new Symbol(JMSymbols.symbol, "\u21AA");
		} else if (code.equals("\\rightharpoonup"))      { return new Symbol(JMSymbols.symbol, "\u21C0");
		} else if (code.equals("\\rightharpoondown"))    { return new Symbol(JMSymbols.symbol, "\u21C1");
		} else if (code.equals("\\leadsto"))             { return new Symbol(JMSymbols.symbol, "\u21DD");
		} else if (code.equals("\\dashleftarrow"))       { return new Symbol(JMSymbols.symbol, "\u21E0");
		} else if (code.equals("\\Lleftarrow"))          { return new Symbol(JMSymbols.symbol, "\u21DA");
		} else if (code.equals("\\looparrowleft"))       { return new Symbol(JMSymbols.symbol, "\u21AB");
		} else if (code.equals("\\circlearrowleft"))     { return new Symbol(JMSymbols.symbol, "\u21BA");
		} else if (code.equals("\\upharpoonleft"))       { return new Symbol(JMSymbols.symbol, "\u21BF");
		} else if (code.equals("\\leftrightsquigarrow")) { return new Symbol(JMSymbols.symbol, "\u21AD");
		} else if (code.equals("\\rightrightarrows"))    { return new Symbol(JMSymbols.symbol, "\u21C9");
		} else if (code.equals("\\rightarrowtail"))      { return new Symbol(JMSymbols.symbol, "\u21A3");
		} else if (code.equals("\\curvearrowright"))     { return new Symbol(JMSymbols.symbol, "\u21B7");
		} else if (code.equals("\\downdownarrows"))      { return new Symbol(JMSymbols.symbol, "\u21CA");
		} else if (code.equals("\\rightsquigarrow"))     { return new Symbol(JMSymbols.symbol, "\u21DD");
		} else if (code.equals("\\nrightarrow"))         { return new Symbol(JMSymbols.symbol, "\u219B");
		} else if (code.equals("\\nleftrightarrow"))     { return new Symbol(JMSymbols.symbol, "\u21AE");
		} else if (code.equals("\\uparrow"))             { return new Symbol(JMSymbols.symbol, "\u2191");
		} else if (code.equals("\\Uparrow"))             { return new Symbol(JMSymbols.symbol, "\u21D1");
		} else if (code.equals("\\downarrow"))           { return new Symbol(JMSymbols.symbol, "\u2193");
		} else if (code.equals("\\Downarrow"))           { return new Symbol(JMSymbols.symbol, "\u21D3");
		} else if (code.equals("\\updownarrow"))         { return new Symbol(JMSymbols.symbol, "\u2195");
		} else if (code.equals("\\Updownarrow"))         { return new Symbol(JMSymbols.symbol, "\u21D5");
		} else if (code.equals("\\nearrow"))             { return new Symbol(JMSymbols.symbol, "\u2197");
		} else if (code.equals("\\searrow"))             { return new Symbol(JMSymbols.symbol, "\u2198");
		} else if (code.equals("\\swarrow"))             { return new Symbol(JMSymbols.symbol, "\u2199");
		} else if (code.equals("\\nwarrow"))             { return new Symbol(JMSymbols.symbol, "\u2196");
		} else if (code.equals("\\leftleftarrows"))      { return new Symbol(JMSymbols.symbol, "\u21C7");
		} else if (code.equals("\\twoheadleftarrow"))    { return new Symbol(JMSymbols.symbol, "\u219E");
		} else if (code.equals("\\leftrightharpoons"))   { return new Symbol(JMSymbols.symbol, "\u21CB");
		} else if (code.equals("\\Lsh"))                 { return new Symbol(JMSymbols.symbol, "\u21B0");
		} else if (code.equals("\\downharpoonleft"))     { return new Symbol(JMSymbols.symbol, "\u21C3");
		} else if (code.equals("\\rightrightarrows"))    { return new Symbol(JMSymbols.symbol, "\u21C9");
		} else if (code.equals("\\rightleftarrows"))     { return new Symbol(JMSymbols.symbol, "\u21C4");
		} else if (code.equals("\\looparrowright"))      { return new Symbol(JMSymbols.symbol, "\u21AC");
		} else if (code.equals("\\circlearrowright"))    { return new Symbol(JMSymbols.symbol, "\u21BB");
		} else if (code.equals("\\upharpoonright"))      { return new Symbol(JMSymbols.symbol, "\u21BE");
		} else if (code.equals("\\nLeftarrow"))          { return new Symbol(JMSymbols.symbol, "\u21CD");
		} else if (code.equals("\\nLeftrightarrow"))     { return new Symbol(JMSymbols.symbol, "\u21CE");
		}
		// Miscellaneous symbols
		if (code.equals("\\infty"))                 { return new Symbol(JMSymbols.symbol, "\u221E");
		} else if (code.equals("\\nabla"))          { return new Symbol(JMSymbols.symbol, "\u2207");
		} else if (code.equals("\\partial"))        { return new Symbol(JMSymbols.symbol, "\u2202");
		} else if (code.equals("\\cdots"))          { return new Symbol(JMSymbols.symbol, "\u22EF");
		} else if (code.equals("\\vdots"))          { return new Symbol(JMSymbols.symbol, "\u22EE");
		} else if (code.equals("\\ldots"))          { return new Symbol(JMSymbols.symbol, "\u22F0");
		} else if (code.equals("\\ddots"))          { return new Symbol(JMSymbols.symbol, "\u22F1");
		} else if (code.equals("\\Im"))             { return new Symbol(JMSymbols.symbol, "\u2111");
		} else if (code.equals("\\Re"))             { return new Symbol(JMSymbols.symbol, "\u211C");
		} else if (code.equals("\\forall"))         { return new Symbol(JMSymbols.symbol, "\u2200");
		} else if (code.equals("\\exists"))         { return new Symbol(JMSymbols.symbol, "\u2203");
		} else if (code.equals("\\nexists"))        { return new Symbol(JMSymbols.symbol, "\u2204");
		} else if (code.equals("\\emptyset"))       { return new Symbol(JMSymbols.symbol, "\u2205");
		} else if (code.equals("\\varnothing"))     { return new Symbol(JMSymbols.symbol, "\u2205");
		} else if (code.equals("\\imath"))          { return new Symbol(JMSymbols.italicsymbol, "i");
		} else if (code.equals("\\jmath"))          { return new Symbol(JMSymbols.italicsymbol, "j");
		} else if (code.equals("\\ell"))            { return new Symbol(JMSymbols.italicsymbol, "l");
		} else if (code.equals("\\Diamond"))        { return new Symbol(JMSymbols.symbol, "\u25C7");
		} else if (code.equals("\\mho"))            { return new Symbol(JMSymbols.symbol, "\u2127");
		} else if (code.equals("\\surd"))           { return new Symbol(JMSymbols.symbol, "\u221A");
		} else if (code.equals("\\angle"))          { return new Symbol(JMSymbols.symbol, "\u2220");
		} else if (code.equals("\\measuredangle"))  { return new Symbol(JMSymbols.symbol, "\u2221");
		} else if (code.equals("\\sphericalangle")) { return new Symbol(JMSymbols.symbol, "\u2222");
		} else if (code.equals("\\complement"))     { return new Symbol(JMSymbols.symbol, "\u2201");
		} else if (code.equals("\\blacklozenge"))   { return new Symbol(JMSymbols.symbol, "\u25C6");
		} else if (code.equals("\\blacksquare"))    { return new Symbol(JMSymbols.symbol, "\u29E0");
		} else if (code.equals("\\blacktriangle"))  { return new Symbol(JMSymbols.symbol, "\u29E0");
		} else if (code.equals("\\space"))          { return new Symbol(JMSymbols.symbol, "\u0020");
		}
		// LATEX math constructs
		return new Symbol(JMSymbols.unknow, "");

	}
%}

%line
%cup

digit  = [0-9]
number = {digit}+
char   = [a-zA-Z]
alpha  = {char}+
space  = [ \t\n\l]

%%

"_"                { return new Symbol(JMSymbols.subscript, "_"); }
"^"                { return new Symbol(JMSymbols.supscript, "^"); }
"{"                { return new Symbol(JMSymbols.lbrace, "{"); }
"}"                { return new Symbol(JMSymbols.rbrace, "}"); }
"["                { return new Symbol(JMSymbols.lfastener, "["); }
"]"                { return new Symbol(JMSymbols.rfastener, "]"); }
\\"frac"           { return new Symbol(JMSymbols.frac, "_"); }
\\"sqrt"           { return new Symbol(JMSymbols.sqrt, "\u221A"); }
\\"overline"       { return new Symbol(JMSymbols.overline, "_"); }
\\"underline"      { return new Symbol(JMSymbols.underline, "_"); }
\\"widehat"        { return new Symbol(JMSymbols.widehat, "\u22C0"); }
\\"widetilde"      { return new Symbol(JMSymbols.widetilde, "\u007E"); }
\\"overrightarrow" { return new Symbol(JMSymbols.overrightarrow, "\u2192"); }
\\"overleftarrow"  { return new Symbol(JMSymbols.overleftarrow, "\u2190"); }

\\{alpha} { return create(yytext()); }
{number}  { return new Symbol(JMSymbols.number, yytext()); }
{alpha}   { return new Symbol(JMSymbols.alpha, yytext()); }
{space}   {}
.         { return create(yytext()); }