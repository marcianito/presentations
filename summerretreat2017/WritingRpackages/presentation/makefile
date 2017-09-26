################################################################################################

#       Filename: template-revealjs.html

#       Author: Stefan Lüdtke

#       Created: Thursday 04 September 2014 23:59:17 CEST

################################################################################################
index.html: index.md makefile default.revealjs
	pandoc  -t  html5\
    --template=default2.revealjs \
    -H custom.css \
  	--standalone --section-divs \
   	--variable theme="moon" \
   	--variable transition="slide" \
  	$< -o  $@

