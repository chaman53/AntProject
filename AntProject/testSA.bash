#!/bin/bash
#1.4

export ANT_HOME=/PDFdata/library/apache_ant/
export PATH=$ANT_HOME/bin:$PATH


echo "Build PMD"
ant  -buildfile jbuild.xml pmd
if [ $? -eq 1 ]; then
	echo "Failed on testSA"
	exit 1
fi
