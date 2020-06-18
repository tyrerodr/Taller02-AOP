import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public aspect Logger{
	after() : execution(void createUser()) {
    	System.out.println("**** Usuario Creado ****");
    }
	after() returning(int opcion): execution(int menu()){
		try(BufferedWriter bw= new BufferedWriter(new FileWriter("src/com/bank/Log.txt",true))){
			if(opcion==2) {
				bw.write("Deposito -");
			}
			else if(opcion==3) {
				bw.write("Retiro -")
			}
		} catch(IOException ex) {
			System.out.println(ex.getMessage());
		}
	}
}