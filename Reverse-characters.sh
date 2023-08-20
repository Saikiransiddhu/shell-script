#!/bin/bash

# Reading a string via user input
read -p "Enter string: " string

# Getting the length of the given string
len=${#string}

# Initializing reverse as an empty string
reverse=""

# Looping for reversing the string
# Initialize i=len-1 for reversing the string and run till i=0
# Append each character to the reverse string
for ((i = len - 1; i >= 0; i--))
do
    reverse="$reverse${string:$i:1}"
done

echo "Reversed string: $reverse"
#reverse 