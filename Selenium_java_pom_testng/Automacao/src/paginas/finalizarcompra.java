package paginas;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class finalizarcompra {
	
	WebDriver driver;
	
	//Localizadores, variaveis
	By primeirovalor = By.xpath("//div[normalize-space()='$29.99']");
	By segundovalor = By.xpath("//div[normalize-space()='$9.99']");
	By valorsomatoriodatela = By.xpath("//*[@id=\"checkout_summary_container\"]/div/div[2]/div[5]");
	By btnfinalizar = By.xpath("//a[normalize-space()='FINISH']");
    public String primeiro, segundo, somatela = " ";
    public float valorconvertidoprimeiro, valorconvertidosegundo, valorconvertidosomatela, soma, somatoriotela = 0;

	//Construtor que ira automaticamente chama o objeto da classe criada
	public finalizarcompra(WebDriver driver) {
		this.driver=driver;
	}
	
	public void pegarvalores() {
		
		//Construtor que ira pegar os valores dos produtos adicionados no carrinho e somá-los
		primeiro = driver.findElement(primeirovalor).getText();
		System.out.println("Primeiro produto: "+primeiro.substring(1, 6));
		valorconvertidoprimeiro = Float.valueOf(primeiro.substring(primeiro.length()-5));
	//	System.out.println("Convertido: "+valorconvertidoprimeiro);
		
		segundo = driver.findElement(segundovalor).getText();
		System.out.println("Segundo produto: "+segundo.substring(1, 5));
		valorconvertidosegundo = Float.valueOf(segundo.substring(segundo.length()-4));		
	//	System.out.println("Convertido: "+valorconvertidosegundo);
		
		soma=valorconvertidoprimeiro+valorconvertidosegundo;
		System.out.println("Soma dos Produtos: "+ soma);
		
        somatela = driver.findElement(valorsomatoriodatela).getText();       
    	valorconvertidosomatela = Float.valueOf(somatela.substring(somatela.length()-5));
		System.out.println("Somatorio total da Tela: "+valorconvertidosomatela);
		
	}
	
	//Metodo para clicar no botão de finalizar a compra
	public void finalizar() {
		WebElement elemento = driver.findElement(btnfinalizar);
	    elemento.click();
	}
	
}
