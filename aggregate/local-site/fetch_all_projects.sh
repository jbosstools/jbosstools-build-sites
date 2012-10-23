#!/bin/bash

mainRepos="build base server openshift webservices gwt forge freemarker hibernate birt jst xulrunner vpe javaee portlet central build-sites"
extraRepos="build-ci download.jboss.org"

# fetch all the main repos needed to build all of JBoss Tools
for d in mainRepos; do
	git clone git@github.com:jbosstools/jbosstools-${d} ${d}
done

# fetch all the extra repos needed to build JBoss Tools with Jenkins and maintain website content
#for d in extraRepos; do
#	git clone git@github.com:jbosstools/jbosstools-${d} ${d}
#done
