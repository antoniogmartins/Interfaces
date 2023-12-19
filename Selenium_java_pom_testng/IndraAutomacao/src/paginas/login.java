package paginas;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class login {
	
	WebDriver driver;
	//Localizadores
	By login = By.xpath("(//input[@id='user-name'])[1]");
			
	By senha = By.xpath("(//input[@id='password'])[1]");
	
	By btnlogin = By.xpath("(//input[@id='login-button'])[1]");
	
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


