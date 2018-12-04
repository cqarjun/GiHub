package com.cucumber.runner;
import com.cucumber.listener.Reporter;
import cucumber.api.CucumberOptions;
import cucumber.api.testng.AbstractTestNGCucumberTests;
import org.testng.annotations.AfterClass;
import java.io.File;
@CucumberOptions(
        features = {"src/test/resources/features/Add item with sku CQ_0003 and qty 5 to shopping cart.feature"},
        glue = {"com.cucumber.stepdefinitions"},
        monochrome = true,
        plugin = {"com.cucumber.listener.ExtentCucumberFormatter:output/report.html"}
)
public class Add_item_with_sku_CQ_0003_and_qty_5_to_shopping_cartRunner extends AbstractTestNGCucumberTests {
/*
@AfterClass
    public static void teardown() {
        Reporter.loadXMLConfig(new File("src/test/resources/extent-config.xml"));
        Reporter.setSystemInfo("user", System.getProperty("user.name"));
        Reporter.setSystemInfo("os", "Windows");
        Reporter.setTestRunnerOutput("Add item with sku CQ_0003 and qty 5 to shopping cart Runner");
    }
*/
}
