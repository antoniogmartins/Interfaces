package casosdetestes;


import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import paginas.login;
import paginas.painel;

public class CT001_1_Validar_Login_Usuario_Valido {
	
	WebDriver driver;
	login Login;
	painel Painel;
    String valoresperado = "Products";
    
	@BeforeTest
	public void navegar() throws InterruptedException{	
		System.setProperty("webdriver.chrome.driver", "/home/antonio/Transferências/Oportunidade de emprego/indra/Drivers/chromedriver-linux64/chromedriver");
		driver = new ChromeDriver();
		driver.get("https://www.saucedemo.com/v1/");
		Login = new login(driver);
	    Painel = new painel(driver);

	}	
	@Test(priority=0)
	public void CT001_1_1_ValidarLogin_Usuario_Valido() throws InterruptedException{
     	//Criando uma Objeto da pagina de login
		
		//Informar o email e a senha de acesso
		Login.enterUsername("standard_user");
		Login.enterPassword("secret_sauce");
		
		//Clicar no botão de Logar
		Login.clickLogin();
		Thread.sleep(3000);
	}
	
	@Test(priority=1)
	public void CT001_1_2_ColetarInformacao() throws InterruptedException{
		//Coletar o nome do titulo da seção na página

		if (Painel.getHeading().equals(valoresperado))
		{
			 System.out.println("O valor do titulo "+Painel.getHeading()+" na Página é identico ao esperado: Products");
		     System.out.println("O nome da página é: "+Painel.getHeading());
		}
		else {
		     System.out.println("O valor do titulo : "+Painel.getHeading()+" na Página é diferente do esperado"+valoresperado);
		}
		System.out.println("==============================================================================");
		Thread.sleep(2000);	
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



