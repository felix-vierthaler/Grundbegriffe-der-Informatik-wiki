#!/bin/bash

echo "Converting Markdown to HTML in background"
./md_htmldoc/md_htmldoc.sh

cd *wiki_htmldoc/

rm README.html
mv wiki/* .
rm -rf wiki
#cd ..
#mv *wiki_htmldoc/index.html .
