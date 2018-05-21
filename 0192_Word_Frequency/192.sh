# words.txt contains only lowercase characters and space ' ' characters.
# Each word must consist of lowercase characters only.
# #Words are separated by one or more whitespace characters.
# Read from the file words.txt and output the word frequency list to stdout.

cat words.txt| sed -r  's/\s+/\n/g'| sed /^$/d | sort | uniq -c| sort  -nr  -k 1| awk '{print $2 " " $1}' 
