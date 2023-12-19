package paginas;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class finalizarcompra {
	
	WebDriver driver;
	
	//Locators for the page title and the logout button
	By btnfinalizar = By.xpath("//a[normalize-space()='FINISH']");

	
	//Constructor that will be automatically called as soon as the object of the class is created
	public finalizarcompra(WebDriver driver) {
		this.driver=driver;
	}
	
	//Method to capture the page heading
	public void finalizar() {
		WebElement elemento = driver.findElement(btnfinalizar);
	    elemento.click();
	}
	
}
