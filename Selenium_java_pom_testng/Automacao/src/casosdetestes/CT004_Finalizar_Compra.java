package casosdetestes;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import paginas.login;
import paginas.painel;
import paginas.selecionarproduto;
import paginas.checkout;
import paginas.finalizarcompra;

public class CT004_Finalizar_Compra {
	
	WebDriver driver;
	login Login;
	painel Painel;
	selecionarproduto Produto;
    checkout Checkout;
    finalizarcompra Finalizar;
    String valoresperado = "Products";
    
	@BeforeTest
	public void navegar() throws InterruptedException{	
		System.setProperty("webdriver.chrome.driver", "/home/antonio/Transferências/Oportunidade de emprego/indra/Drivers/chromedriver-linux64/chromedriver");
		driver = new ChromeDriver();
		driver.get("https://www.saucedemo.com/v1/");
		Login = new login(driver);
	    Painel = new painel(driver);
	    Produto = new selecionarproduto(driver);
	    Checkout = new checkout(driver);
	    Finalizar = new finalizarcompra(driver);

	}	
	@Test(priority=0)
	public void logar() throws InterruptedException{
		
     	//Criando uma Objeto da pagina de login
		
		//Informar o email e a senha de acesso
		Login.enterUsername("standard_user");
		Login.enterPassword("secret_sauce");
		
		//Clicar no botão de Logar
		Login.clickLogin();
		Thread.sleep(2000);
	}
	
	@Test(priority=1)
	public void coletarInformacao() throws InterruptedException{
		//Coletar o nome do titulo da seção na página

		if (Painel.getHeading().equals(valoresperado))
		{
			 System.out.println("O valor do titulo "+Painel.getHeading()+" na Página é identico ao esperado: Products");
		     System.out.println("O nome da página é: "+Painel.getHeading());
		}
		else {
		     System.out.println("O valor do titulo "+Painel.getHeading()+" na Página é diferente do esperado"+valoresperado);
		}
		//System.out.println("O nome da página é: "+Painel.getHeading());
		Thread.sleep(2000);	
}	
	
	@Test(priority=2)
	public void selecionarProduto() throws InterruptedException{
		Produto.adicionarproduto();
		Thread.sleep(2000);
		Produto.acessarcarrinho();
		Thread.sleep(2000);
	}
	
	@Test(priority=3)
	public void fazerChekout() throws InterruptedException{
		Checkout.fazerCheckout();
		Thread.sleep(2000);
		Checkout.inserirPrimeiroNome();
		Thread.sleep(2000);
		Checkout.inserirUltimoNome();
		Thread.sleep(2000);
		Checkout.inserirZipPostalCode();
		Thread.sleep(2000);
		Checkout.continuar();
		Thread.sleep(2000);
	}
	
	@Test(priority=4)
	public void finalizarCompra() throws InterruptedException{
		Thread.sleep(2000);
		Finalizar.finalizar();
		Thread.sleep(2000);
	}
	
	@Test(priority=5)
	public void deslogar() throws InterruptedException{
		Painel.clickLogout();
		Thread.sleep(2000);
	}
	
	@AfterTest
	public void sair() throws InterruptedException{
      //Fechando a instancia do Browser
        driver.quit();
	}

}



