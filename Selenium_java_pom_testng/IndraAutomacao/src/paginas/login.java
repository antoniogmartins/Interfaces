package paginas;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class login {
	
	WebDriver driver;
	//Locator for username field
	By login = By.xpath("(//input[@id='user-name'])[1]");
			
	//Locator for password field
	By senha = By.xpath("(//input[@id='password'])[1]");
	
	//Locator for login button
	By btnlogin = By.xpath("(//input[@id='login-button'])[1]");
	
	public login(WebDriver driver) {
          this.driver = driver;
	}
	
	//Method to enter username
	public void enterUsername(String usuario) {
		driver.findElement(login).sendKeys(usuario);
	}

	//Method to enter password
	public void enterPassword(String password) {
		driver.findElement(senha).sendKeys(password);
	}
	
	//Method to click on Login button
	public void clickLogin() {
		driver.findElement(btnlogin).click();
	}
}


