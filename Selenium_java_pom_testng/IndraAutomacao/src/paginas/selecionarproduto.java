package paginas;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class selecionarproduto {
	
	WebDriver driver;
	
	//Locators for the page title and the logout button
	By addtocart = By.xpath("//div[@class='inventory_list']//div[1]//div[3]//button[1]");
	By carrinho = By.xpath("//*[@id='shopping_cart_container']/a/span");
	
	//Constructor that will be automatically called as soon as the object of the class is created
	public selecionarproduto(WebDriver driver) {
		this.driver=driver;
	}
	
	//Method to capture the page heading
	public void adicionarproduto() {
		driver.findElement(addtocart).click();
	}
	
	public void acessarcarrinho() {
		driver.findElement(carrinho).click();
	}
}
