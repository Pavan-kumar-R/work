#Implement an HTML file using shell script to list the files in the directory with filesize etc.

#!/bin/bash

title="Long listing along with hidden files"

list=`ls -al`
cat <<- _EOF_
	<HTML>
	<HEAD>
	    <TITLE>
	    $title
	    </TITLE>
	<HEAD>

	<BODY>
	<H1> $list </H1>
	</BODY>
	</HTML>
_EOF_
