#Write an HTML code generator using Shell

#!/bin/bash
display="HELLO WORLD"
cat << noEcho
<HTML>
<HEAD>
<TITLE> Cool Bash trick </TITLE>
</HEAD>
<BODY>
$display
</BODY>
</HTML>
noEcho
