#!/bin/bash

# memo.txt is the original memo, making a new memo file to add edits to
cp memo.txt memocopy.txt

echo To: > memocopy.txt
echo Fr: Regratta Pinkslip >> memocopy.txt
todaysDate=`date "+%m/%d/%Y"`
echo DATE: $todaysDate >> memocopy.txt
echo >> memocopy.txt
echo 'The monthly employee firing/layoff meeting is in the coffee shop at 4:30.' >> memocopy.txt
echo 'Our President Pauper P. Poormouth will discuss the state of the company.' >> memocopy.txt
sed -n '3,$p' memo.txt > memocopy.txt

# getting the number of lines to iterate through
numberOfLines=`wc -l database.txt | cut -c 8`

# making a copy of the database file to edit
cp database.txt databasecopy.txt

for i in `seq 1 $numberOfLines`
do
	line=`head -n 1 databasecopy.txt`
	firstChar=`echo $line | cut -c 1`
	if [ $firstChar == '#' ]
		then
		sed -i -e '1d' databasecopy.txt
		continue
	fi
	name=`head -n 1 databasecopy.txt | sed 's/,.*//p'`
	sed -i -e "1s/To:/To: $name/" memocopy.txt
	# send off email here to this person
	echo $name DONE
	sed -i -e "1s/To: $name/To:/" memocopy.txt
	sed -i -e '1d' databasecopy.txt
done