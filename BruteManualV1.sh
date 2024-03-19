#!/bin/bash
# Random password
# brute force script, no longer working with updated sample secret text files

# TO DO:
# 	- check for completion with entropy instead of words
#	- use new encryption standards and files (generalize)

ecrypted=1
passwdd=""
charCount=0

#looping through every line in word list (~ 52000 times)
while read -r line; do
	echo "$line"
	lineRef=${line//$'\n'}
	echo "$lineRef"
	#openssl base64 -in chand.txt.secret -out candidatechand.txt
	#openssl bf-ofb -nosalt -d -in candidatechand.txt -out mysterychand.txt -pass pass:"$line"
	#openssl base64 -in mysterychand.txt -out legiblechand.txt

	openssl  bf-ofb -nosalt -d -in /home/ttlr/chand.txt.secret -out /home/ttlr/candidatechand.txt -pass pass:"$lineRef"
	openssl base64 -in candidatechand.txt -out legiblechand.txt
	chandLine=$(grep -i " chand " < legiblechand.txt)
	chandLength=${#chandLine}
	spaceLine=$(grep " " < legiblechand.txt)
	spaceLength=${#chandLength}
	flawLine=$(grep -i "$lineRef" < legiblechand.txt)
	lineLength=${#flawLine}
	echo "Spaces: $spaceLength"
	echo "Chands: $chandLength"
	echo "Flaws: $lineLength"
	#if [[ $chandLength != 0 ]]; then
	#	echo "$line was the password!"
	#	cat legiblechand.txt
	#	echo "$chandLine"
	#	exit
	#fi
	#if [[ $spaceLength != 0 ]]; then
        #        echo "$line was the password!"
        #        let passwdd=$line
	#	exit
	#fi
	#if [[ $lineLength != 0 ]]; then
	#	echo "$lineRef was the password!"
	#	cat legiblechand.txt
	#	echo "$flawLine"
	#	exit
	#fi

	#new plan: get a list of words and if there is like 3 matches then likely to be decrypted
	matches=0
	while read -r line; do
		echo "$line"
		occurance=$(grep -i "$line" < legiblechand.txt)
		if [[ ${#occurance} -ge 0 ]]; then
			matches=$(($matches + 1))
			
		fi
	done < reflist.txt	
	if [[ $matches -ge 4 ]]; then
		echo "$lineRef was the password!"
		cat legiblechand.txt
		exit
	fi
	echo "$line didn't work"

done < word_list.txt
