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

public class CT003_1_Fazer_Checkout {
	
	WebDriver driver;
	login Login;
	painel Painel;
	selecionarproduto Produto;
    checkout Checkout;
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

	}	
	@Test(priority=0)
	public void CT003_1_1_ValidarLogin_Usuario_Valido() throws InterruptedException{
		
     	//Criando uma Objeto da pagina de login
		
		//Informar o email e a senha de acesso
		Login.enterUsername("standard_user");
		Login.enterPassword("secret_sauce");
		
		//Clicar no botão de Logar
		Login.clickLogin();
		Thread.sleep(2000);
	}
	
	@Test(priority=1)
	public void CT003_1_2_AdicionarProduto() throws InterruptedException{
     	//Criando uma Objeto da pagina de Adicionar Produtos
		Produto.adicionarproduto();
		Thread.sleep(2000);
		Produto.acessarcarrinho();
		Thread.sleep(2000);
	}
	
	@Test(priority=2)
	public void CT003_1_3_FazerChekout() throws InterruptedException{
     	//Criando uma Objeto da pagina de Fazer CHeckout
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
		System.out.println("==============================================================================");
	}
		
	@AfterTest
	public void deslogar() throws InterruptedException{
		Painel.clickLogout();
		Thread.sleep(2000);
	}

	public void sair() throws InterruptedException{
      //Fechando a instancia do Browser
        driver.quit();
	}

}



