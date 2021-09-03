#### PROBLEM UNDERSTANDING AND RULES
- Write a program that takes a word and a list of possible anagrams and selects the correct sublist that contains the anagrams of the word.

- For example, given the word "listen" and a list of candidates like "enlists", "google", "inlets", and "banana", the program should return a list containing "inlets".

- Input: one word (a string) and a list of possible anagrams of that word (an array of strings)
- Ouput: list of the correct anagrams of the given word (array of selected strings from given string)

- Anagram? Words that have same exact letters in different order
  - Letters cannot be repeated: same letters in the same amount
  - The two words must have same length
  - The two words must have the same exact letters

#### EXAMPLES AND TEST CASES
- We need to create a class called Anagram
- It defines an `initialize` method that takes a string as argument
- It defines a `match` instance method that takes an array of strings and perform the anagram detection against the given string and returns an array with found anagrams

#### DATA STRUCTURE
- String
- Array of strings

#### ALGORITHM
- Compute anagram finder
  - Input: array of strings and single string
  - iterate array and select words of same lengh and same num of chars as the given string
  - if they are the same word, don't select it

- Determie if two strings are made of the same length and same exact characters
  - extract strings chars into two arrays of chars
  - order the arrays from a-z
  - compare the two arrays
  - if same
    - store in separate empty array
  - if not
    - move to next
  - repeat with next string  

