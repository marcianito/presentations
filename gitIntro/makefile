index.html: index.md makefile default.revealjs custom.css
	pandoc  -t  html5\
    --template=default.revealjs \
    -H custom.css \
  	--standalone --section-divs \
	--highlight-style zenburn \
   	--variable theme="moon" \
   	--variable transition="slide" \
  	$< -o  $@

