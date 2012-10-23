This folder can be used to install locally-built JBoss Tools components into your local Eclipse for testing purposes.

---

If you need to fetch sources from Git before building, see the script in this folder, fetch_all_projects.sh:

	https://github.com/jbosstools/jbosstools-build-sites/tree/master/aggregate/local-site/fetch_all_projects.sh

Or, if you prefer to fetch one project at a time (including its upstream dependencies), you can use this script:

	https://github.com/jbosstools/jbosstools-build/tree/master/scripts/checkout.sh

Then, to build everything, in this folder run:

	mvn clean install -DskipTests
---

Next, point Eclipse at this folder to install anything from this composite site:

	file:///path/to/jbosstools-build-sites/aggregate/local-site/

You can also build aggregate sites by running maven in one of these folders:

	../site/
	../coretests-site/
	../webtools-site/
	../soa-site/
	../soatests-site/

