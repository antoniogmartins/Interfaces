package paginas;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class painel {
	
	WebDriver driver;
	
	//Locators for the page title and the logout button
	By heading = By.xpath("//div[@class='product_label']");
	By logoutBtn = By.xpath("(//a[normalize-space()='Logout'])[1]");	
	
	//Constructor that will be automatically called as soon as the object of the class is created
	public painel(WebDriver driver) {
		this.driver=driver;
	}
	
	//Method to capture the page heading
	public String getHeading() {
		String head = driver.findElement(heading).getText();
		return head;
	}
	
	//Method to click on Logout button
	public void clickLogout() {
		//WebDriverWait wait = new WebDriverWait(driver, 10);
		//wait.until(ExpectedConditions.elementToBeClickable(logoutBtn));
		WebElement element = driver.findElement(logoutBtn);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", element);
		
        //driver.findElement(logoutBtn).click();
	}

}
