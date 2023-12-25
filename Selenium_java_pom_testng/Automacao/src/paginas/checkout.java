package paginas;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class checkout {
	
	WebDriver driver;
	
	//Localizadores, variaveis
	By btncheckout = By.xpath("//*[@id=\"cart_contents_container\"]/div/div[2]/a[2]");
	By field_firstname = By.xpath("//input[@id='first-name']");
	By field_lastname = By.xpath("//input[@id='last-name']");
	By field_zipcode = By.xpath("//input[@id='postal-code']");
	By btncontinue = By.xpath("//input[@value='CONTINUE']");
	
	//Construtor que ira automaticament chamar o objeto da classe criada
	public checkout(WebDriver driver) {
		this.driver=driver;
	}
	
	//Metodo para clicar no botão de checkout
	public void fazerCheckout() {
		driver.findElement(btncheckout).click();
	}

	//Metodo para informar o Primeiro Nome
	public void inserirPrimeiroNome() {
		driver.findElement(field_firstname).sendKeys("Maria");
	}

	//Metodo para informar o Ultimo Nome
	public void inserirUltimoNome() {
		driver.findElement(field_lastname).sendKeys("de Lourdes");
	}

	//Metodo para informar o Codigo Postal
	public void inserirZipPostalCode() {
		driver.findElement(field_zipcode).sendKeys("20240000");
	}
	
	//Metodo para clicar no botão de continuar
	public void continuar() {
		driver.findElement(btncontinue).click();
	}

}
