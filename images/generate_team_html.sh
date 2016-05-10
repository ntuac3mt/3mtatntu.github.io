#!/bin/zsh

rm output.html
touch output.html

while read line
do
	name=`echo ${line} | cut -d"," -f 1`
	filename=`echo ${line} | cut -d"," -f 2`
	word1=`echo ${line} | cut -d"," -f 3`
	word2=`echo ${line} | cut -d"," -f 4`
	word3=`echo ${line} | cut -d"," -f 5`

	echo "<div class=\"media\">" >> output.html
	echo "\t<div class=\"pull-left\">" >> output.html
	echo "\t\t<img class=\"media-object\" height=\"200\" width=\"200\" src=\"./images/team/${filename}\" alt=\"Media Object\">" >> output.html
	echo "\t\t<h3 style=\"color:#FF0000;\">${name}</h3>" >> output.html
	echo "\t\t<h5>${word1}, ${word2}, ${word3}</h5>" >> output.html
	echo "\t</div>" >> output.html
	echo "</div>" >> output.html

	echo "" >> output.html

done < data.csv

