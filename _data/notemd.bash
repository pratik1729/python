#!/bin/bash

for file in `ls *.ipynb`; do
echo $file
jupyter nbconvert $file --to markdown
done

for file in `ls *.md`; do
cat $file > temp
echo "---" > ./$file
echo "layout: default" >> ./$file
echo "title: $file" >> ./$file
echo "---" >> ./$file
cat temp >> $file
done
rm temp
mv *.md ./../

