#### PROBLEM UNDERSTANDING AND RULES
- We need a DNA class
- That accepts a string as argument; that argument is the DNA strand
- The string is a made of string characters of any lenght
- The class defines an instance method `hamming_distance` that compares the DNA object's DNA strand with another given strand
- This method compares the two DNA strands and return the Hamming distance, which counts the number of differences between the two DNA strands

#### EXAMPLES AND TEST CASES
- The two given DNA strands can be of same or different lenghts
- If they are of the same lenght, each characters of a DNA strands will be compare with the character at same index position of the other DNA strand
- If they are of different lenght, each characters of a shorter DNA strands will be compare with the character at same index position of the other DNA strand, up to the size of the shorter strand; the rest of characters will be ignored.
- The Hammind distance is the count of characters that are different in the two DNA strands when compared

#### DATA STRUCTURE
- The DNA object stores the DNA strand as string
- Because string is an index-based object, we can directly compare the two strings char by char

#### ALGORITHM
- Define a `DNA` class
- Define an `initialize` method that takes a string that is the DNA strand
  - Don't need to validate input; we assume the input is always valid (string of uppercased characters)
- Define an instance method `hamming_distance` that takes a string as argument
  - Don't need tp validate input; we assume the argument is always valid (string of uppercased characters)
  - To compare the two given strands we first need to make them the same lenght
    - Capture all characters from 0 upto and including the lenght of the shorter string
  - Once the two strings are of the same size, compare them char by char
    - Everytime there is a different character, increase a counter by 1
  - Return the counter after all characters have been compared     
