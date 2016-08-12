import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class TestClass {

	public static void main(String ar[])
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingbackend.config");
		context.refresh();
	}
	
}
