#!/bin/bash
# Authors : Gunnar Wilson
# Date: 9/19/2019

#Problem 1 Code:

echo "Enter a filename: "
read filename
echo "Enter a regular expression: "
read expression

grep -c  $expression $filename # 
echo "Number of emails: "
grep -c -P '[A-Za-z0-9]+@[A-Za-z0-9]+\.[A-Za-z0-9]' regex_practice.txt # Returns number of email addresses in the practice file
echo "List of phone numbers: "
grep -o -P '^(303)?\-[0-9]{3}?\-[0-9]{4}' regex_practice.txt # Returns total number of phone numbers in the practice file

# Output emails to file
grep -P '[A-Za-z0-9]+@geocities.com' regex_practice.txt >> email_results.txt
echo "DONE!"

#Make sure to document how you are solving each problem!
