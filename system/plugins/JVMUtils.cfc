<!-----------------------------------------------------------------------********************************************************************************Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corpwww.coldbox.org | www.luismajano.com | www.ortussolutions.com********************************************************************************Author 	 :	Luis MajanoDate     :	September 23, 2005Description :	This is a JVM utilities library.Modification History:-----------------------------------------------------------------------><cfcomponent hint="This is a JVM Utilities CFC"       		 output="false"       		 cache="true"			 cacheTimeout="5"><!------------------------------------------- CONSTRUCTOR ------------------------------------------->	<cffunction name="init" access="public" returntype="JVMUtils" output="false">		<cfscript>						// Plugin Properties			setpluginName("JVM Utilities Plugin");			setpluginVersion("1.0");			setpluginDescription("This plugin provides various OS/java utilities");			setpluginAuthor("Luis Majano, Sana Ullah");			setpluginAuthorURL("http://www.coldbox.org");						return this;		</cfscript>	</cffunction><!------------------------------------------- OS/JVM SPECIFIC METHODS ------------------------------------------->	<cffunction name="getOSFileSeparator" access="public" returntype="string" output="false" hint="Get the operating system's file separator character">		<cfscript>		return createObject("java","java.lang.System").getProperty("file.separator");		</cfscript>	</cffunction>	<cffunction name="getOSPathSeparator" access="public" returntype="string" output="false" hint="Get the operating system's path separator character.">		<cfscript>		return createObject("java","java.lang.System").getProperty("path.separator");		</cfscript>	</cffunction>	<cffunction name="getOSName" access="public" returntype="string" output="false" hint="Get the operating system's name">		<cfscript>		return createObject("java","java.lang.System").getProperty("os.name");		</cfscript>	</cffunction>	<cffunction name="getInetHost" access="public" returntype="string" output="false" hint="Get the hostname of the executing machine.">		<cfreturn createObject("java", "java.net.InetAddress").getLocalHost().getHostName()>	</cffunction>	<cffunction name="getIPAddress" access="public" returntype="string" output="false" hint="Get the ip address of the executing hostname machine.">		<cfreturn createObject("java", "java.net.InetAddress").getLocalHost().getHostAddress()>	</cffunction>	<cffunction name="getJavaRuntime" access="public" returntype="string" output="false" hint="Get the java runtime version">		<cfreturn createObject("java", "java.lang.System").getProperty("java.runtime.version")>	</cffunction>	<cffunction name="getJavaVersion" access="public" returntype="string" output="false" hint="Get the java version.">		<cfreturn createObject("java", "java.lang.System").getProperty("java.version")>	</cffunction>	<cffunction name="getJVMFreeMemory" access="public" returntype="string" output="false" hint="Get the JVM's free memory.">		<cfscript>		return createObject("java", "java.lang.Runtime").getRuntime().freeMemory();		</cfscript>	</cffunction>	<cffunction name="getJVMTotalMemory" access="public" returntype="string" output="false" hint="Get the JVM's total memory.">		<cfreturn createObject("java", "java.lang.Runtime").getRuntime().totalMemory()>	</cffunction></cfcomponent>