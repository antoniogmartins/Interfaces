package paginas;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class login {
	
	WebDriver driver;

	//Localizadores, variaveis
	By login = By.xpath("(//input[@id='user-name'])[1]");			
	By senha = By.xpath("(//input[@id='password'])[1]");
	By btnlogin = By.xpath("(//input[@id='login-button'])[1]");
	
    public static By mensagem = By.xpath("/html/body/div[2]/div[1]/div/div/form/h3");
    public static WebElement mensagemretornada_valorinvalido, mensagemretornada_valornulo;
    public static String mensagemesperada_valorinvalido = "Epic sadface: Username and password do not match any user in this service";
    public static String mensagemesperada_valornulo = "Epic sadface: Username is required";
    
    public static String validando = " ";
    
	//Construtor que ira automaticament chamar o objeto da classe criada
	public login(WebDriver driver) {
          this.driver = driver;
	}
	
	//Metodo para entrar com o usuario/email
	public void enterUsername(String usuario) {
		driver.findElement(login).sendKeys(usuario);
	}

	//Metodo para entrar com a senha
	public void enterPassword(String password) {
		driver.findElement(senha).sendKeys(password);
	}
	
	//Metodo para clicar no botão de entrar/logar
	public void clickLogin() {
		driver.findElement(btnlogin).click();
	}
}


