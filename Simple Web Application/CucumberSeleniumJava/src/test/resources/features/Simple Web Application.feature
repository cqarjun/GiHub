@Simple_Web_Application  @regression
Feature: Simple Web Application

@Item_1___Armen_ 
Scenario: Item 1: 'Armen'

	When PERFORM Enter URL
	Then VERIFY Login SCREEN
	When FILL UserInfo FORM userName_TEXTBOX password_TEXTBOX
	|userName_TEXTBOX||password_TEXTBOX|
	|Armen|123|
	And CLICK OK BUTTON Login SCREEN
	Then VERIFY ESD Main SCREEN


@Add_item_with_sku_CQ_0002_and_qty_5_to_shopping_cart 
Scenario: Add item with sku CQ_0002 and qty 5 to shopping cart

	When PERFORM Enter URL
	Then VERIFY Login SCREEN
	When FILL UserInfo FORM userName_TEXTBOX password_TEXTBOX
	|userName_TEXTBOX||password_TEXTBOX|
	|Stephan|abc|
	And CLICK OK BUTTON Login SCREEN
	Then VERIFY ESD Main SCREEN
	When FILL Item FORM sku_TEXTBOX qty_TEXTBOX
	|sku_TEXTBOX||qty_TEXTBOX|
	|CQ_0002|5|
	And CLICK Add Item BUTTON ESD Main FORM
	Then VERIFY ESD Main SCREEN 1 sku_TABLE_CELL__Verification_ qty_TABLE_CELL__Verification_
	|sku_TABLE_CELL__Verification_||qty_TABLE_CELL__Verification_|
	|CQ_0002|5|


@Add_item_with_sku_CQ_0003_and_qty_5_to_shopping_cart 
Scenario: Add item with sku CQ_0003 and qty 5 to shopping cart

	When PERFORM Enter URL
	Then VERIFY Login SCREEN
	When FILL UserInfo FORM userName_TEXTBOX password_TEXTBOX
	|userName_TEXTBOX||password_TEXTBOX|
	|Stephan|abc|
	And CLICK OK BUTTON Login SCREEN
	Then VERIFY ESD Main SCREEN
	When FILL Item FORM sku_TEXTBOX qty_TEXTBOX
	|sku_TEXTBOX||qty_TEXTBOX|
	|CQ_0003|5|
	And CLICK Add Item BUTTON ESD Main FORM
	Then VERIFY ESD Main SCREEN 1 sku_TABLE_CELL__Verification_ qty_TABLE_CELL__Verification_
	|sku_TABLE_CELL__Verification_||qty_TABLE_CELL__Verification_|
	|CQ_0003|5|


@Avoid_Shopping_page_displays_after_successful_login 
Scenario: Avoid Shopping page displays after successful login

	When PERFORM Enter URL
	Then VERIFY Login SCREEN
	When FILL UserInfo FORM userName_TEXTBOX password_TEXTBOX
	|password_TEXTBOX|
	|[Don't care]|
	And CLICK OK BUTTON Login SCREEN
	Then VERIFY Error POPUP
	When PERFORM Enter URL
	Then VERIFY Login SCREEN
	When FILL UserInfo FORM userName_TEXTBOX password_TEXTBOX
	|password_TEXTBOX|
	|[Don't care]|
	And CLICK OK BUTTON Login SCREEN
	Then VERIFY Error POPUP


@Add_item_with_sku_abc_and_qty__1_to_shopping_cart 
Scenario: Add item with sku abc and qty -1 to shopping cart

	When PERFORM Enter URL
	Then VERIFY Login SCREEN
	When FILL UserInfo FORM userName_TEXTBOX password_TEXTBOX
	|userName_TEXTBOX||password_TEXTBOX|
	|Stephan|abc|
	And CLICK OK BUTTON Login SCREEN
	Then VERIFY ESD Main SCREEN
	When FILL Item FORM sku_TEXTBOX qty_TEXTBOX
	|sku_TEXTBOX||qty_TEXTBOX|
	|abc|-1|
	And CLICK Add Item BUTTON ESD Main FORM
	Then VERIFY Error POPUP
	And VERIFY Error POPUP
	Then VERIFY ESD Main SCREEN


@Node_Activity__Check_Out_ 
Scenario: Node Activity 'Check Out'

	When PERFORM Enter URL
	Then VERIFY Login SCREEN
	When FILL UserInfo FORM userName_TEXTBOX password_TEXTBOX
	|userName_TEXTBOX||password_TEXTBOX|
	|Stephan|abc|
	And CLICK OK BUTTON Login SCREEN
	Then VERIFY ESD Main SCREEN
	When FILL Item FORM sku_TEXTBOX qty_TEXTBOX
	|sku_TEXTBOX||qty_TEXTBOX|
	|CQ_0001|5|
	And CLICK Add Item BUTTON ESD Main FORM
	Then VERIFY ESD Main SCREEN 1 sku_TABLE_CELL__Verification_ qty_TABLE_CELL__Verification_
	|sku_TABLE_CELL__Verification_||qty_TABLE_CELL__Verification_|
	|CQ_0001|5|
	When CLICK Checkout BUTTON ESD Main SCREEN
	Then VERIFY ESD Checkout SCREEN sku_TABLE_CELL__Verification_ qty_TABLE_CELL__Verification_
	|sku_TABLE_CELL__Verification_||qty_TABLE_CELL__Verification_|
	|CQ_0001|5|


@Remove_CQ_0001 
Scenario: Remove CQ_0001

	When PERFORM Enter URL
	Then VERIFY Login SCREEN
	When FILL UserInfo FORM userName_TEXTBOX password_TEXTBOX
	|userName_TEXTBOX||password_TEXTBOX|
	|Stephan|abc|
	And CLICK OK BUTTON Login SCREEN
	Then VERIFY ESD Main SCREEN
	When FILL Item FORM sku_TEXTBOX qty_TEXTBOX
	|sku_TEXTBOX||qty_TEXTBOX|
	|CQ_0001|5|
	And CLICK Add Item BUTTON ESD Main FORM
	Then VERIFY ESD Main SCREEN 1 sku_TABLE_CELL__Verification_ qty_TABLE_CELL__Verification_
	|sku_TABLE_CELL__Verification_||qty_TABLE_CELL__Verification_|
	|CQ_0001|5|
	When CLICK Remove item BUTTON ESD Main SCREEN Shopping cart TABLE
	Then VERIFY ESD Main SCREEN

