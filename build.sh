#!/bin/bash

#delete docs folder
rm -rf docs/

#generate html
echo "Converting Markdown to HTML in background"
./md_htmldoc/md_htmldoc.sh

#remove generated readme html
cd *wiki_htmldoc/
rm README.html

#move wiki directory up
mv wiki/* .
rm -rf wiki

#move wiki into docs folder
cd ..
mv *wiki_htmldoc docs

#generate pdf files
cd wiki
for f in *.md
do
    echo "generating pdf for $f file..."
    filename="${f%.*}"
    pandoc $f -t pdf -s -o $filename.pdf
done

cd ..
rm -rf pdfs/
mkdir pdfs
mv wiki/*.pdf pdfs/
