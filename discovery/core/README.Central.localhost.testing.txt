To build/test locally:

0. Build discovery plugins & generate discovery.xml files:

	cd jbosstools-build-sites/discovery/core/; mvn clean install

1. Run a web server locally, so you can access jbosstools-build-sites/discovery/core/jbosstools-directory.xml via an http:// URL. You have many options for this. Here is one:

	su
	cd /tmp; wget -nc http://elonen.iki.fi/code/nanohttpd/NanoHTTPD.java
	javac NanoHTTPD.java; java NanoHTTPD -d /path/to/parent/folder/for/discovery/

2. Verify the directory.xml file is generated, and http-accessible:

	firefox http://localhost/core/jbosstools-directory.xml

3. Verify http://localhost/core/jbosstools-directory.xml points at the updated version of the o.j.t.central.discovery plugin in 
jbosstools-build-sites/discovery/core/

	Note: if built locally, there should be no Jenkins/Hudson buildID Hxxx number in the version suffix, eg., 
		1.0.0.v20120120-1459-Beta1 
	instead of 
		1.0.0.v20120120-1459-H123-Beta1

4. Launch Eclipse like this:

	./eclipse -vmargs  -Djboss.discovery.directory.url=http://localhost/core/jbosstools-directory.xml
		or
	add the -Djboss.discovery.directory.url flag to your eclipse.ini file after the -vmargs line

5. Select 'Help > Jboss Central' (if not already loaded). Check the 'Software/Updates' tab to review contents of the discovery site (as per org.jboss.tools.central.discovery/plugin.xml). 
Hit the refresh icon if necessary to see changes.

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

To test upstream changes:

1. If you need to iterate through changes to the product/plugins/com.jboss.jbds.central plugin, you can do so, rebuild it, and reinstall it into a running Eclipse instance.

   	Help > Install new > file:///path/to/product/site/target/repository/

You may also want to rebuild this the examples plugin to set a different default URL (jboss.discovery.directory.url) for the directory.xml file, or the JBoss Central plugins:

	vim jbosstools-central/examples/plugins/org.jboss.tools.project.examples/pom.xml
	cd jbosstools-central; mvn clean install -DskipTests -Dmaven.test.skip
