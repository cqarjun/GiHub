com.conformiq.creator.structure.v14
creator.gui.screen qml6e8134b8c9934d56a4de3a6509ccf196 "ESD Main"
{
	creator.gui.form qml9728b5aef5024b6da9cfddae7b3719e5 "Item"
		mapping = [
		creator.datamapping qmlcb8162df15a44e37bafeee7d04ab4e2b ""
			source = qml9728b5aef5024b6da9cfddae7b3719e5
			target = qmlbed44af6da6f475daeb83176639af5b5;
	]
	{
		
		creator.gui.textbox qml7d0387ac657b42ef90f76fcfdd630220 "sku"
			type = String
			status = enabled;
		creator.gui.textbox qml9ecbfd96726844b7b8a655fdc17c913d "qty"
			type = number
			status = enabled;
		creator.gui.button qml66eda3c643a040948766296a7fe0d1ea "Add Item"
			status = enabled;
	}
	creator.gui.button qml602c51f2cc314627900b245c52678501 "Checkout"
		status = dontcare;
	creator.gui.uitable qmlcd2fef20e2134d92aa047dc60a0ed18e "Shopping cart"
	datatable = qmlbed44af6da6f475daeb83176639af5b5
	{
		creator.gui.button qml49453deee3954c19a0fccb54c65d5735 "Remove item"
			status = dontcare;
	}
}
creator.message qmlb822d3fcfd9f41ef87990752d5437f11 "Configuration"
	interfaces = [ qml17e002178ac44f14a293b37347fcb6ce ]
{
	creator.primitivefield qml045481c3981042e7b1643a44c7e99f57 "baseUrl"
		type = String;
}
creator.externalinterface qml17e002178ac44f14a293b37347fcb6ce "config"
	direction = in;
creator.gui.screen qml2807bd4869f84a98a6096d7517b799dc "ESD Checkout"
{
	creator.gui.uitable qml1ddab3f2fbb24efd8fc462af13fe0e9c "Shopping cart"
	datatable = qmlbed44af6da6f475daeb83176639af5b5
	{
	}
}
creator.datatable qmlbed44af6da6f475daeb83176639af5b5 "Items"
{
	creator.primitivecell qmlcb13787b045a4f888ff43daae3612b3b "sku"
		type = String;
	creator.primitivecell qml7d5e4d30fa844605abd3c4b77f5727bb "qty"
		type = number;
}
creator.gui.popup qmlf70081db82ff4c97a0bedfeddb222955 "Error"
{
	creator.gui.button qml0ef2b7dc795c449e9723aaf1743376a7 "OK"
		status = enabled;
}
creator.customaction qmlfa8c09e72f1d44f0a7fd733a74f63836 "Enter URL"
	interfaces = [ qml17e002178ac44f14a293b37347fcb6ce ]
	shortform = "EU"
	direction = in
	tokens = [ literal "Enter URL " reference qmld6690ea8ab2945fabeef4533b4efb594
]
{
	creator.primitivefield qmld6690ea8ab2945fabeef4533b4efb594 "url"
		type = String;
}