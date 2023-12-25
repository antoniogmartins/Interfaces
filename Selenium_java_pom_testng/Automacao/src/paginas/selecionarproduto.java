package paginas;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class selecionarproduto {
	
	WebDriver driver;
	
	//Localizadores, variaveis
	By addtocart = By.xpath("//div[@class='inventory_list']//div[1]//div[3]//button[1]");
	By addtocart1 = By.xpath("//body//div[@id='page_wrapper']//div[@id='inventory_container']//div[@id='inventory_container']//div[2]//div[3]//button[1]");
	By carrinho = By.xpath("//*[@id='shopping_cart_container']/a/span");
	By subtocart = By.xpath("//*[@id=\"cart_contents_container\"]/div/div[1]/div[3]/div[2]/div[2]/button");
	
	//Construtor que ira automaticament chamar o objeto da classe criada
	public selecionarproduto(WebDriver driver) {
		this.driver=driver;
	}
	
	//Metodo para adicionar um produto na cesta de carrinho
	public void adicionarproduto() {
		driver.findElement(addtocart).click();
	}

	//Metodo para adcionar outro produto na cesta de carrinho
	public void adicionaroutroproduto() {
		driver.findElement(addtocart1).click();
	}
	
	//Metodo para remover um produto na cesta de carrinho
	public void removerproduto() {
		driver.findElement(subtocart).click();
	}
	
	//Metodo para acessar o carrinho
	public void acessarcarrinho() {
		driver.findElement(carrinho).click();
	}
}
