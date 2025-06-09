#!/bin/bash

#to toogle
toggle_case() {
read -p "enter a string:" str
result=""
for((i=0;i<${#str};i++))
do
ch="${str:$i:1}"
ascii=$(printf "%d" "'$ch")
if [[ $ascii -ge 97 && $ascii -le 122 ]]; then
ascii=$((ascii-32))
elif [[ $ascii -ge 65 && $ascii -le 90 ]]; then
ascii=$((ascii+32))
fi
result="$result$(printf "\\$(printf %03o $ascii)")"
done
echo "toggled string:$result"
}


#extract substring
extract_substring() {
read -p "enter a string:" str
read -p "enter starting position(0 based):" start
read -p "enter length of substring:" len
result=""
for((i=$start;i<$start+$len && i<${#str};i++))
do
result="${result}${str:$i:1}"
done
echo "extracted substring:$result"
}

#replace word
replace_word() {
read -p "enter original string:" str
read -p "enter word to replace:" old
read -p "enter new word:" new
result=""
word=""
for((i=0;i<=${#str};i++))
do
ch="${str:$i:1}"
if [[ "$ch" == " " || $i -eq ${#str} ]]; then
if [[ "$word" == "$old" ]]; then
result="$result$new "
else
result="$result$word "
fi
word=""
else
word="$word$ch"
fi
done
echo "modified string:$result"
}


#count occurence
count_occurence() {
read -p "enter a string:" str
read -p "enter word to count" search
count=0
words=""
for((i=0;i<=${#str};i++))
do
ch="${str:$i:1}"
if [[ "$ch" == " " || $i -eq ${#str} ]]; then
if [[ "$word" == "$search" ]]; then
((count++))
fi
word=""
else
word="$word$ch"
fi
done
echo "occurence of $search:$count"
}


#check equal
check_equal() {
read -p "enter first string:" str1
read -p "enter second string:" str2
if [[ "${#str1}" -ne "${#str2}" ]]; then
echo "strings are not equal"
return
fi
for((i=0;i<${#str1};i++))
do
if [[ "${str1:$i:1}" != "${str2:$i:1}" ]]; then
echo "strings are not equal"
return
fi
done
echo "strings are equal"
}


#main loop
while true
do
echo "1.toggle case"
echo "2.extract substring"
echo "3.replace a word"
echo "4.count occurence"
echo "5.check if 2 strings are equal"
echo "6.exit"
read -p "enter your choice" ch
case $ch in
1)toggle_case;;
2)extract_substring;;
3)replace_word;;
4)count_occurence;;
5)check_equal;;
6)break;;
*)echo "invalid choice"
esac
done
