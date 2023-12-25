package casosdetestes;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import paginas.login;
import paginas.painel;

public class CT001_2_Validar_Login_Usuarios_Invalidos {
	
	//WebElements
	WebDriver driver;
	login Login;
	painel Painel;

   
	@BeforeTest
	public void navegar() throws InterruptedException{	
		System.setProperty("webdriver.chrome.driver", "/home/antonio/Transferências/Oportunidade de emprego/indra/Drivers/chromedriver-linux64/chromedriver");
		driver = new ChromeDriver();
		driver.get("https://www.saucedemo.com/v1/");
		Login = new login(driver);
	    Painel = new painel(driver);

	}	
	@Test(priority=0)
	public void CT001_2_1_LogarcomUsuariosInvalidos() throws InterruptedException{
     	//Criando uma Objeto da pagina de login
		
		//Informar o email e a senha de acesso invalidos
		Login.enterUsername("standard_user1");
		Login.enterPassword("secret_sauce1");
		
		//Clicar no botão de Logar
		Login.clickLogin();
		Thread.sleep(3000);
		
		//Validando as mensagem de error
		login.mensagemretornada_valorinvalido = driver.findElement(login.mensagem);
		login.validando = login.mensagemretornada_valorinvalido.getText();
		System.out.println("=> Mensagem retornada do sistema ao validar o login com valor invalido: " +login.validando);
		
		//Verificando se a mensagem esperada é igual a mensagem retornada
		if (login.validando.equals(login.mensagemesperada_valorinvalido))
		{
			System.out.println("=> Foi apresentada uma mensagem de erro ao tentar validar com login invalido "+"\n"
					+ "caracterizando que o sistema está tratando do caso quando os  "+"\n"
					+ "dados fornecidos para o login não estiverem corretos");
		} else 
		{
			System.out.println("=> Não foi apresentada uma mensagem de erro "
					+ "caracterizando que os dados fornecidos para o login estão corretos");
		}
		System.out.println("==============================================================================");
	    driver.navigate().refresh();
	}	
	
	
	@Test(priority=1)
	public void CT001_2_2_LogarcomUsuariosNulos() throws InterruptedException{
     	//Criando uma Objeto da pagina de login
		
		//Informar o email e a senha de acesso em branco
		Login.enterUsername("");
		Login.enterPassword("");
		
		//Clicar no botão de Logar
		Login.clickLogin();
		Thread.sleep(3000);
		
		//Validando as mensagem de error
		login.mensagemretornada_valornulo = driver.findElement(login.mensagem);
		login.validando = login.mensagemretornada_valornulo.getText();
		System.out.println("=> Mensagem retornada do sistema ao validar o login com valor nulo: " +login.validando);
		
		//Verificando se a mensagem esperada é igual a mensagem retornada
		if (login.validando.equals(login.mensagemesperada_valornulo))
		{
			System.out.println("=> Foi apresentada uma mensagem de erro ao tentar validar login com valor nulo"+"\n"
					+ "caracterizando que o sistema está tratando do caso quando os  "+"\n"
					+ "dados fornecidos para o login não estiverem corretos");
		} else 
		{
			System.out.println("=> Não foi apresentada uma mensagem de erro "
					+ "caracterizando que os dados fornecidos para o login estão corretos");
		}
		System.out.println("==============================================================================");
	}	
	
	@AfterTest
	public void sair() throws InterruptedException{
      //Fechando a instancia do Browser
        driver.quit();
	}

}



