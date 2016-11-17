package core;

import java.io.File;
import java.io.StringReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Run {

	public void executar() throws Exception {
		File current_dir = new File("src/core/code.py");
		Path path = Paths.get(current_dir.getAbsolutePath());
		byte[] file = Files.readAllBytes(path);
		
		String expr     = new String(file);
		Yylex scanner   = new Yylex(new StringReader(expr));
        Python3Parser parser = new Python3Parser(scanner);
        parser.parse();

        Python3Extractor python3extractor = parser.getExtractor();
        python3extractor.print();
	}

	public static void main(String[] args) {
		Run app = new Run();
		try {
			app.executar();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
