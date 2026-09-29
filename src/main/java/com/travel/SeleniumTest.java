package com.travel;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class SeleniumTest {

    public static void main(String[] args) {

        WebDriver driver = new ChromeDriver();

        driver.get("http://localhost:8081/travelsite/register.jsp");
        
     // isSelected() - check radio button selection

        WebElement male =
                driver.findElement(By.id("male"));

        System.out.println("Male selected before click: "
                + male.isSelected());

        male.click();

        System.out.println("Male selected after click: "
                + male.isSelected());
        
     // 1. ID
        WebElement nameById =
                driver.findElement(By.id("name"));

        System.out.println("ID locator: "
                + nameById.getAttribute("value"));


        // 2. NAME
        WebElement emailByName =
                driver.findElement(By.name("email"));

        System.out.println("NAME locator: "
                + emailByName.getAttribute("name"));


        // 3. CLASS NAME
        WebElement logo =
                driver.findElement(By.className("logo"));

        System.out.println("CLASS NAME locator: "
                + logo.getText());


        // 4. LINK TEXT
        WebElement destinationLink =
                driver.findElement(By.linkText("Destinations"));

        System.out.println("LINK TEXT locator: "
                + destinationLink.getText());


        // 5. TAG NAME
        List<WebElement> links =
                driver.findElements(By.tagName("a"));

        System.out.println("TAG NAME locator - Number of links: "
                + links.size());


        // 6. CSS SELECTOR
        WebElement nameByCss =
                driver.findElement(By.cssSelector("#name"));

        System.out.println("CSS SELECTOR locator: "
                + nameByCss.getAttribute("value"));


        // 7. XPATH
        WebElement nameByXpath =
                driver.findElement(By.xpath("//input[@id='name']"));

        System.out.println("XPATH locator: "
                + nameByXpath.getAttribute("value"));

        // 1. findElement()
        WebElement nameField =
                driver.findElement(By.id("name"));

        // 2. isDisplayed()
        System.out.println("Name field displayed: "
                + nameField.isDisplayed());

        // 3. isEnabled()
        System.out.println("Name field enabled: "
                + nameField.isEnabled());

        // 4. clear()
        nameField.clear();

        // 5. sendKeys()
        nameField.sendKeys("Kavipriya");

        // 6. getAttribute()
        System.out.println("Name field value: "
                + nameField.getAttribute("value"));

        // Find the email field
        WebElement emailField =
                driver.findElement(By.id("email"));

        emailField.clear();
        emailField.sendKeys("kavi@gmail.com");

        // Find the password field
        WebElement passwordField =
                driver.findElement(By.id("password"));

        passwordField.clear();
        passwordField.sendKeys("test123");

        // 7. getText()
        WebElement heading =
                driver.findElement(By.tagName("h2"));

        System.out.println("Heading: " + heading.getText());

        // 8. findElements()
        List<WebElement> alllinks =
                driver.findElements(By.tagName("a"));

        System.out.println("Number of links: " + alllinks.size());

        // Close browser
        driver.quit();
    }
}