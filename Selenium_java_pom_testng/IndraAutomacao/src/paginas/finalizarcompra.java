package paginas;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class finalizarcompra {
	
	WebDriver driver;
	
	//Localizadores
	By btnfinalizar = By.xpath("//a[normalize-space()='FINISH']");

	
	//Construtor que ira automaticament chamar o objeto da classe criada
	public finalizarcompra(WebDriver driver) {
		this.driver=driver;
	}
	
	//Metodo para clicar no botão de finalizar a compra
	public void finalizar() {
		WebElement elemento = driver.findElement(btnfinalizar);
	    elemento.click();
	}
	
}
