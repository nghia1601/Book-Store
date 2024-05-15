package com.example.book.Test;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
//import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;

import java.util.concurrent.TimeUnit;

public class RegisterTest {

    public static void main(String[] args) {
        

        System.setProperty("webdriver.edge.driver","C:\\Users\\Nghia\\Desktop\\Selenium\\msedgedriver.exe");
        
        
        // Khởi tạo đối tượng WebDriver
        WebDriver driver = new EdgeDriver();

        // Thiết lập thời gian chờ cho WebDriver
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

        // Mở trang web cần kiểm thử
        driver.get("http://localhost:8080/book/register");

        // Test đăng ký
        testRegister(driver);

        // Đóng trình duyệt
        //driver.quit();
    }

    public static void testRegister(WebDriver driver) {
        // Định vị các phần tử cần thiết
       // WebElement registerLink = driver.findElement(By.linkText("Đăng ký"));
       // registerLink.click();

        // Định vị các phần tử trên trang đăng ký
        WebElement usernameInput = driver.findElement(By.id("newUsername"));
        WebElement emailInput = driver.findElement(By.id("newEmail"));
        WebElement passwordInput = driver.findElement(By.id("newPassword"));
        WebElement confirmPasswordInput = driver.findElement(By.id("confirmPassword"));
        WebElement registerButton = driver.findElement(By.id("register"));

        // Nhập thông tin đăng ký
        usernameInput.sendKeys("nghia01");
        emailInput.sendKeys("a@gmail.com");
        passwordInput.sendKeys("123");
        confirmPasswordInput.sendKeys("123");

        // Click vào nút đăng ký
        registerButton.click();

        // Kiểm tra xem việc đăng ký có thành công hay không
        // (Bạn cần thêm các kiểm thử phù hợp với trang web của mình)
    }
}
