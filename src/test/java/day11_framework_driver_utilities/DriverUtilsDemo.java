package day11_framework_driver_utilities;


import org.openqa.selenium.By;

import utils.DataReader;
import utils.Driver;

public class DriverUtilsDemo {
	
	
	public static void main(String[] args) {
		sauceDemoTest();
	}
	
	
	public static void sauceDemoTest() {
		
		// go to saucedemo website 
		Driver.getDriver().get("https://saucedemo.com");
		Driver.getDriver().findElement(By.id("user-name")).sendKeys(DataReader.getProperty("sauce_username"));
		Driver.getDriver().findElement(By.id("password")).sendKeys(DataReader.getProperty("sauce_password"));
		Driver.getDriver().findElement(By.id("login-button")).click();
		
		
		
	}

}
