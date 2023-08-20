#!/bin/bash

is_palindrome() {
    local word="$1"
    local cleaned_word=$(echo "$word" | tr '[:upper:]' '[:lower:]' | tr -cd '[:alnum:]')
    
    local reversed_word=$(echo "$cleaned_word" | rev)
    
    if [ "$cleaned_word" == "$reversed_word" ]; then
        return 0  # Palindrome
    else
        return 1  # Not a palindrome
    fi
}

echo -n "Enter a word or phrase: "
read input_word

if is_palindrome "$input_word"; then
    echo "'$input_word' is a palindrome!"
else
    echo "'$input_word' is not a palindrome."
fi
