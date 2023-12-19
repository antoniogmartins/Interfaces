package paginas;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class painel {
	
	WebDriver driver;
	
	//Localizadores
	By heading = By.xpath("//div[@class='product_label']");
	By logoutBtn = By.xpath("(//a[normalize-space()='Logout'])[1]");	
	
	//Construtor que ira automaticament chamar o objeto da classe criada
	public painel(WebDriver driver) {
		this.driver=driver;
	}
	
	//Metodo para trazer o titulo da pagina
	public String getHeading() {
		String head = driver.findElement(heading).getText();
		return head;
	}
	
	//Metodo para clicar em deslogar
	public void clickLogout() {
		//WebDriverWait wait = new WebDriverWait(driver, 10);
		//wait.until(ExpectedConditions.elementToBeClickable(logoutBtn));
		WebElement element = driver.findElement(logoutBtn);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", element);
		
	}

}
