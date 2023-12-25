package casosdetestes;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import paginas.login;
import paginas.painel;
import paginas.selecionarproduto;

public class CT002_2_Remover_Produto_Carrinho {
	
	WebDriver driver;
	login Login;
	painel Painel;
	selecionarproduto Produto;
    String valoresperado = "Products";
    
	@BeforeTest
	public void navegar() throws InterruptedException{	
		System.setProperty("webdriver.chrome.driver", "/home/antonio/Transferências/Oportunidade de emprego/indra/Drivers/chromedriver-linux64/chromedriver");
		driver = new ChromeDriver();
		driver.get("https://www.saucedemo.com/v1/");
		Login = new login(driver);
	    Painel = new painel(driver);
	    Produto = new selecionarproduto(driver);

	}	
	@Test(priority=0)
	public void CT002_2_1_ValidarLogin_Usuario_Valido()  throws InterruptedException{
		
     	//Criando uma Objeto da pagina de login
		
		//Informar o email e a senha de acesso
		Login.enterUsername("standard_user");
		Login.enterPassword("secret_sauce");
		
		//Clicar no botão de Logar
		Login.clickLogin();
		Thread.sleep(2000);
		System.out.println("==============================================================================");
	}
		
	@Test(priority=1)
	public void CT002_2_2_AdicionarProduto() throws InterruptedException{
     	//Criando uma Objeto da pagina de Adicionar Produtos
		
		Produto.adicionarproduto();
		Thread.sleep(3000);
		Produto.acessarcarrinho();
		Thread.sleep(2000);
	}
	
	@Test(priority=2)
	public void CT002_2_3_RemoverProduto() throws InterruptedException{
     	//Criando uma Objeto da pagina de Remover Produtos
		Produto.removerproduto();
		Thread.sleep(3000);
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



