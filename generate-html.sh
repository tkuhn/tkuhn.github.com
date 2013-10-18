export LC_ALL="en_US.UTF-8"
DATE=`date +"%e %B %Y"`

cat index.md | markdown > index-content.html
cat index-template.html \
  | sed -e '/^<!--  CONTENT ENDS   -->$/r index-content.html' -e 'x;$G' \
  | sed "s/<!-- DATE  -->/$DATE/" \
  | sed 's/>\[\([^<]*\)\]<\/a>/ class="doc">\1<\/a>/' \
  > index.html
rm index-content.html
