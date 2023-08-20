def is_palindrome(word):
    # Convert the word to lowercase and remove non-alphanumeric characters
    cleaned_word = ''.join(c for c in word.lower() if c.isalnum())
    
    # Compare the cleaned word with its reverse
    return cleaned_word == cleaned_word[::-1]

# Get input from the user
input_word = input("Enter a word or phrase: ")

# Check if the input is a palindrome
if is_palindrome(input_word):
    print(f"'{input_word}' is a palindrome!")
else:
    print(f"'{input_word}' is not a palindrome.")
