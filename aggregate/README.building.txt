1. First, build the various components referenced in site.xml (or pull them from upstream previous builds hosted on http://download.jboss.org/jbosstools/builds/staging/)

Components are here:

    https://github.com/jbosstools

2. Next, ensure the parent pom can be resolved. You don't need to build it. You only need to add a settings.xml file to resolve it from JBoss Nexus:

    https://community.jboss.org/wiki/HowToBuildJBossTools41FAQ

  If you want to build it, it can be found here:

    https://github.com/jbosstools/jbosstools-build

3. Build this folder w/ `mvn clean install`

4. Review the resulting update site in site/target/repository/:

	firefox target/repository/index.html

5. Load the site into Eclipse as a local repo, eg., 

	file:///path/to/target/repository/
