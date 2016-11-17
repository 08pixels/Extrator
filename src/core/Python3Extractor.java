package core;

import javax.swing.JOptionPane;

public class Python3Extractor {
	private int MAX = 20;
	private String []keyword = new String[MAX];
	private int []countVector = new int[MAX];
	
	public Python3Extractor() {
		
		for(int i=0; i<MAX; ++i){ // zera as posições dos vetores.
			keyword[i] = "!";
			countVector[i] = 0;
		}
		
		keyword[Python3Symbols.IF] = "IF";
		keyword[Python3Symbols.ELIF] = "ELIF";
		keyword[Python3Symbols.FOR] = "FOR";
		keyword[Python3Symbols.WHILE] = "WHILE";
		keyword[Python3Symbols.EXCEPT] = "EXCEPT";
		keyword[Python3Symbols.WITH] = "WITH";
		keyword[Python3Symbols.ASSERT] = "ASSERT";
		keyword[Python3Symbols.COMPREHENSION] = "COMPREHENSION";
		keyword[Python3Symbols.AND] = "AND";
		keyword[Python3Symbols.OR] = "OR";
		keyword[Python3Symbols.LINE] = "\nNumero de linhas";
		countVector[Python3Symbols.LINE] = 1; // Por causa da última linha que não tem \n.
	}
	
	public int complexity(){
		int c = 0;
		for (int i = 0; i < MAX; i++) {
			if(i == Python3Symbols.LINE)
				continue;
			c += countVector[i];
		}
		return c + 1;
	}

	public void print() {
		StringBuilder retorno = new StringBuilder();
		
		for(int i=0; i<MAX; ++i){
			if(!keyword[i].equals("!")) // verifica se a posição é uma keyword
				retorno.append(keyword[i]).append(" : ").append(countVector[i]).append("\n");
		}
		
		JOptionPane.showMessageDialog(null, retorno.toString() + "C.Complexity: " + complexity());
	}

	public void addOperator(int operator) {
		++countVector[operator];
	}
	
}
