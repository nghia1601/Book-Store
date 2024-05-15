package com.example.book.Test;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
//import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;

import java.util.concurrent.TimeUnit;

public class LoginTest {

    public static void main(String[] args) {

        System.setProperty("webdriver.edge.driver","C:\\Users\\Nghia\\Desktop\\Selenium\\msedgedriver.exe");


        // Khởi tạo đối tượng WebDriver
        WebDriver driver = new EdgeDriver();

        // Thiết lập thời gian chờ cho WebDriver
        driver.manage().timeouts().implicitlyWait(1000, TimeUnit.SECONDS);

        // Mở trang web cần kiểm thử
        driver.get("http://localhost:8080/book/login");

        // Test đăng nhập
        testLogin(driver);

        // Đóng trình duyệt
        //driver.quit();

    }

    public static void testLogin(WebDriver driver) {
        // Định vị các phần tử cần thiết
        WebElement usernameInput = driver.findElement(By.id("username"));
        WebElement passwordInput = driver.findElement(By.id("password"));
        WebElement loginButton = driver.findElement(By.id("login"));

        // Nhập thông tin đăng nhập
        usernameInput.sendKeys("nghia01");
        passwordInput.sendKeys("123");

        // Click vào nút đăng nhập
        loginButton.click();

        // Kiểm tra xem việc đăng nhập có thành công hay không
        // (Bạn cần thêm các kiểm thử phù hợp với trang web của mình)
    }
}
