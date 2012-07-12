cat index.md | markdown > index-content.html
sed -e '/^<!--  CONTENT ENDS   -->$/r index-content.html' -e 'x;$G' index-template.html > index.html
rm index-content.html
