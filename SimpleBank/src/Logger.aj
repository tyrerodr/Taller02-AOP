public aspect Logger{
	after() : execution(void createUser()) {
    	System.out.println("**** Usuario Creado ****");
    }
}