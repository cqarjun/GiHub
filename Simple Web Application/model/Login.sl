com.conformiq.creator.structure.v14
creator.gui.screen qml25d1c91fed7a4d0194af5e0255e4fac2 "Login"
{
	creator.gui.menubar qml27c90ac971f7474eb82f046fbe5029b3 "MenuBar"
	{
		creator.gui.menu qmlb522859aa19e48e8b7b3fd5a88c10f06 "File"
		{
			creator.gui.clickchoice qml56613614fd464ca692f2285852c57fac "Save";
		}
		creator.gui.menu qmlea22270124a749cca51b2d24bcd68df4 "Help"
		{
			creator.gui.clickchoice qml0c6e8087a81b46c9bb22b08b6a505440 "Help";
		}
	}
	creator.gui.form qml049bdeb3147d4ef5949c16c65f31bc29 "UserInfo"
		mapping = [ ]
	{
		creator.gui.textbox qml770130b5665e489f998cc15a23f89fb3 "userName"
			type = String
			status = dontcare;
		creator.gui.textbox qmlfea499de4b1f4dd9b37c090059b8ebd5 "password"
			type = String
			status = dontcare;
	}
	creator.gui.button qml679f615fcadf44d4b85e425260afaa73 "OK"
		status = dontcare;
}
creator.datatable qmld659d5e406b84a1d8d9a130a976da7a0 "Users"
	mapping = [ ]
{
	creator.primitivecell qmlb4d30af9cc7d4aaf9e128d2244b55cd2 "userName"
		type = String;
	creator.primitivecell qml5b39b640c5544818aa63541be20f998e "password"
		type = String;
	creator.enumerationcell qml8be1733519854169b48283eb13c015be "user type"
		type = qml97c033fd977d4bd484f398d20bb84b4e
		initialized
		default =
	qml97c033fd977d4bd484f398d20bb84b4e.qml6a3b418d9db947e48156c04c823d3022;
}
creator.enum qml97c033fd977d4bd484f398d20bb84b4e "UserType"
{
	creator.enumerationvalue qml49fecf7756e647dd951b21a46d5b27ea "admin";
	creator.enumerationvalue qml6a3b418d9db947e48156c04c823d3022 "user";
}
creator.datatable qmla9c8dbeda8844813bf3e86076de05732 "Search"
	mapping = [ ]
{
	creator.primitivecell qml3d8b3542249d49a797d842a173e617b2 "userName"
		type = String;
	creator.primitivecell qml1f452b217de249209d7fbbaa7133a128 "password"
		type = String;
}
