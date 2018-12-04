package test.java.com.cucumber.stepdefinitions;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.openqa.selenium.WebElement;
import org.testng.ITestResult;
import com.cucumber.listener.Reporter;
import com.thoughtworks.selenium.Selenium;
import Utilities.Selenium_Functions;
import cucumber.api.DataTable;
import cucumber.api.PendingException;
import cucumber.api.Scenario;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import src.test.resources.Data.*;

public class StepDefinitions {

		@When("^PERFORM Enter URL$")
		public void PERFORM_Enter_URL() throws Throwable {
		//  Logger.log( "Starting");
		//  Logger.log( "When PERFORM Enter URL");
		//  Logger.log( "completed");

		}

		@Then("^VERIFY Login SCREEN$")
		public void VERIFY_Login_SCREEN() throws Throwable {
		//  Logger.log( "Starting");
		//  Logger.log( "Then VERIFY Login SCREEN");
		   CoreUtils.Verify_WebElement_Actual(LoginPage.userName, ,"Verify that [a value] is displayed in the userName textbox in the Login screen in the UserInfo form");
		   CoreUtils.Verify_WebElement_Actual(LoginPage.password, ,"Verify that [a value] is displayed in the password textbox in the Login screen in the UserInfo form");
		//  Logger.log( "completed");

		}

		@When("^FILL UserInfo FORM$")
		public void FILL_UserInfo_FORM(String userName_TEXTBOX,String password_TEXTBOX) throws Throwable {
		//  Logger.log( "Starting");
		//  Logger.log( "When FILL UserInfo FORM userName_TEXTBOX password_TEXTBOX");
		   CoreUtils.Set_TextBox_Value(LoginPage.userName, userName_TEXTBOX, "Enter <<userName TEXTBOX>> in the userName textbox in the Login screen in the UserInfo form");
		   CoreUtils.Set_TextBox_Value(LoginPage.password, password_TEXTBOX, "Enter <<password TEXTBOX>> in the password textbox in the Login screen in the UserInfo form");
		//  Logger.log( "completed");

		}

		@And("^CLICK OK BUTTON Login SCREEN$")
		public void CLICK_OK_BUTTON_Login_SCREEN() throws Throwable {
		//  Logger.log( "Starting");
		//  Logger.log( "And CLICK OK BUTTON Login SCREEN");
		   CoreUtils.Click_Object(LoginPage.OK, "yes", "Click the OK button in the Login screen");
		//  Logger.log( "completed");

		}

		@Then("^VERIFY ESD Main SCREEN$")
		public void VERIFY_ESD_Main_SCREEN() throws Throwable {
		//  Logger.log( "Starting");
		//  Logger.log( "Then VERIFY ESD Main SCREEN");
		   CoreUtils.Verify_WebElement_Actual(ESD_MainPage.sku, ,"Verify that [a value] is displayed in the sku textbox in the ESD Main screen in the Item form");
		   CoreUtils.Verify_WebElement_Actual(ESD_MainPage.qty, ,"Verify that [a value] is displayed in the qty textbox in the ESD Main screen in the Item form");
		//  Logger.log( "completed");

		}

		@When("^FILL Item FORM$")
		public void FILL_Item_FORM(String sku_TEXTBOX,String qty_TEXTBOX) throws Throwable {
		//  Logger.log( "Starting");
		//  Logger.log( "When FILL Item FORM sku_TEXTBOX qty_TEXTBOX");
		   CoreUtils.Set_TextBox_Value(ESD_MainPage.sku, sku_TEXTBOX, "Enter <<sku TEXTBOX>> in the sku textbox in the ESD Main screen in the Item form");
		   CoreUtils.Set_TextBox_Value(ESD_MainPage.qty, qty_TEXTBOX, "Enter <<qty TEXTBOX>> in the qty textbox in the ESD Main screen in the Item form");
		//  Logger.log( "completed");

		}

		@And("^CLICK Add Item BUTTON ESD Main FORM$")
		public void CLICK_Add_Item_BUTTON_ESD_Main_FORM() throws Throwable {
		//  Logger.log( "Starting");
		//  Logger.log( "And CLICK Add Item BUTTON ESD Main FORM");
		   CoreUtils.Click_Object(ItemPage.Add_Item, "yes", "Click the Add Item button in the ESD Main screen");
		//  Logger.log( "completed");

		}

		@Then("^VERIFY ESD Main SCREEN 1$")
		public void VERIFY_ESD_Main_SCREEN_1(String sku_TABLE_CELL__Verification_,String qty_TABLE_CELL__Verification_) throws Throwable {
		//  Logger.log( "Starting");
		//  Logger.log( "Then VERIFY ESD Main SCREEN 1 sku_TABLE_CELL__Verification_ qty_TABLE_CELL__Verification_");
		   CoreUtils.Verify_WebElement_Actual(ESD_MainPage.sku, ,"Verify that [a value] is displayed in the sku textbox in the ESD Main screen in the Item form");
		   CoreUtils.Verify_WebElement_Actual(ESD_MainPage.qty, ,"Verify that [a value] is displayed in the qty textbox in the ESD Main screen in the Item form");
		   CoreUtils.Verify_WebElement_Actual(ESD_MainPage.sku, sku_TABLE_CELL__Verification_,"Verify <<sku TABLE CELL [Verification]>> in the sku table cell in the ESD Main screen");
		   CoreUtils.Verify_WebElement_Actual(ESD_MainPage.qty, qty_TABLE_CELL__Verification_,"Verify <<qty TABLE CELL [Verification]>> in the qty table cell in the ESD Main screen");
		//  Logger.log( "completed");

		}

		@Then("^VERIFY Error POPUP$")
		public void VERIFY_Error_POPUP() throws Throwable {
		//  Logger.log( "Starting");
		//  Logger.log( "Then VERIFY Error POPUP");
		//  Logger.log( "completed");

		}

		@When("^CLICK Checkout BUTTON ESD Main SCREEN$")
		public void CLICK_Checkout_BUTTON_ESD_Main_SCREEN() throws Throwable {
		//  Logger.log( "Starting");
		//  Logger.log( "When CLICK Checkout BUTTON ESD Main SCREEN");
		   CoreUtils.Click_Object(ESD_MainPage.Checkout, "yes", "Click the Checkout button in the ESD Main screen");
		//  Logger.log( "completed");

		}

		@Then("^VERIFY ESD Checkout SCREEN$")
		public void VERIFY_ESD_Checkout_SCREEN(String sku_TABLE_CELL__Verification_,String qty_TABLE_CELL__Verification_) throws Throwable {
		//  Logger.log( "Starting");
		//  Logger.log( "Then VERIFY ESD Checkout SCREEN sku_TABLE_CELL__Verification_ qty_TABLE_CELL__Verification_");
		   CoreUtils.Verify_WebElement_Actual(ESD_CheckoutPage.sku, sku_TABLE_CELL__Verification_,"Verify <<sku TABLE CELL [Verification]>> in the sku table cell in the ESD Checkout screen");
		   CoreUtils.Verify_WebElement_Actual(ESD_CheckoutPage.qty, qty_TABLE_CELL__Verification_,"Verify <<qty TABLE CELL [Verification]>> in the qty table cell in the ESD Checkout screen");
		//  Logger.log( "completed");

		}

		@When("^CLICK Remove item BUTTON ESD Main SCREEN Shopping cart TABLE$")
		public void CLICK_Remove_item_BUTTON_ESD_Main_SCREEN_Shopping_cart_TABLE() throws Throwable {
		//  Logger.log( "Starting");
		//  Logger.log( "When CLICK Remove item BUTTON ESD Main SCREEN Shopping cart TABLE");
		   CoreUtils.Click_Object(ESD_MainPage.Remove_item, "yes", "Click the Remove item button in the Shopping cart UI Table in the ESD Main screen");
		//  Logger.log( "completed");

		}
}