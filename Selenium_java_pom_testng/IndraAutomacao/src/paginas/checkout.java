package paginas;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class checkout {
	
	WebDriver driver;
	
	//Locators for the page title and the logout button
	By btncheckout = By.xpath("//*[@id=\"cart_contents_container\"]/div/div[2]/a[2]");
	By field_firstname = By.xpath("//input[@id='first-name']");
	By field_lastname = By.xpath("//input[@id='last-name']");
	By field_zipcode = By.xpath("//input[@id='postal-code']");
	By btncontinue = By.xpath("//input[@value='CONTINUE']");
	
	//Constructor that will be automatically called as soon as the object of the class is created
	public checkout(WebDriver driver) {
		this.driver=driver;
	}
	
	//Method to capture the page heading
	public void fazerCheckout() {
		driver.findElement(btncheckout).click();
	}
	
	public void inserirPrimeiroNome() {
		driver.findElement(field_firstname).sendKeys("Maria");
	}

	public void inserirUltimoNome() {
		driver.findElement(field_lastname).sendKeys("de Lourdes");
	}

	public void inserirZipPostalCode() {
		driver.findElement(field_zipcode).sendKeys("20240000");
	}

	public void continuar() {
		driver.findElement(btncontinue).click();
	}

}
