<?xml version="1.0" encoding="ISO-8859-1"?>
<Config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:noNamespaceSchemaLocation="../system/config/config.xsd">
	<Settings>
		<Setting name="AppName" 					value="coldbox"/>
		<Setting name="AppCFMXMapping" 				value="fwcoldbox"/>
		<Setting name="DebugMode" 					value="true"/>
		<Setting name="DebugPassword" 				value="coldbox"/>
		<!--This feature is enabled, by default-->
		<Setting name="DumpVarActive" 				value="true"/>
		<Setting name="ColdfusionLogging" 			value="true"/>
		<!--Absolute path to where you want your log files to be stored-->
		<Setting name="ColdboxLogsLocation"			value="../testing" />
		<Setting name="DefaultEvent" 				value="ehGeneral.dspHello"/>
		<Setting name="RequestStartHandler" 		value=""/>
		<Setting name="RequestEndHandler" 			value=""/>
		<Setting name="ApplicationStartHandler"		value="ehGeneral.onApplicationStart" />
		<Setting name="OwnerEmail" 					value="lmajano@gmail.com"/>
		<Setting name="EnableBugReports" 			value="true"/>
		<Setting name="UDFLibraryFile" 				value="includes/udf.cfm" />
		<Setting name="CustomErrorTemplate"			value="" />
		<Setting name="MessageboxStyleClass"		value="mymessagebox" />
		<Setting name="HandlersIndexAutoReload"   	value="false" />
		<Setting name="ConfigAutoReload"			value="true" />
		<Setting name="ExceptionHandler"     		value="" />
		<!--Path to plugins, as if to instantiate -->
		<Setting name="MyPluginsLocation" 			value="myplugins"/>
	</Settings>
	
	<YourSettings />
	
	<!--Optional,if blank it will use the CFMX administrator settings.-->
	<MailServerSettings />
	
	<BugTracerReports>
	</BugTracerReports>
	
	<DevEnvironments>
		<url>dev</url>
		<url>lmajano</url>
	</DevEnvironments>
	
	<WebServices >
		<WebService URL="http://www.test.com/test.cfc?wsdl" name="TestWS"/>
		<WebService URL="http://www.coldbox.com/testit.cfc?wsdl" name="AnotherTestWS" DevURL="http://test.coldbox.com/test.cfm?wsdl"/>
	</WebServices>
	
	<Layouts>
		<DefaultLayout>Layout.Main.cfm</DefaultLayout>
		<Layout file="Layout.Login.cfm" name="login">
			<View>vwLogin</View>
		</Layout>
	</Layouts>
	
	<i18N>
		<!--Default Resource Bundle without locale and properties extension-->
		<DefaultResourceBundle>includes/main</DefaultResourceBundle>
		<!--Java Standard Locale-->
		<DefaultLocale>en_US</DefaultLocale>
		<!--session or client-->
		<LocaleStorage>session</LocaleStorage>
	</i18N>
	
	<Datasources>
		<Datasource name="mysite" dbtype="mysql"  username="root" password="pass" />
		<Datasource name="myblog" dbtype="oracle" username="root" password="pass" />
	</Datasources>
	
</Config>
