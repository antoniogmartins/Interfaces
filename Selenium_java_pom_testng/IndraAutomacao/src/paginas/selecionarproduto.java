package paginas;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class selecionarproduto {
	
	WebDriver driver;
	
	//Localizadores
	By addtocart = By.xpath("//div[@class='inventory_list']//div[1]//div[3]//button[1]");
	By carrinho = By.xpath("//*[@id='shopping_cart_container']/a/span");
	
	//Construtor que ira automaticament chamar o objeto da classe criada
	public selecionarproduto(WebDriver driver) {
		this.driver=driver;
	}
	
	//Metodo para adicionar um produto na cesta de carrinho
	public void adicionarproduto() {
		driver.findElement(addtocart).click();
	}

	//Metodo para acessar o carrinho
	public void acessarcarrinho() {
		driver.findElement(carrinho).click();
	}
}
