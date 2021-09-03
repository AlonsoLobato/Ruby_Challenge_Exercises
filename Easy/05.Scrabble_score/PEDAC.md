#### PROBLEM UNDERSTANDING AND RULES
- Write a program that, given a word, computes the Scrabble score for that word.

- Letter Values:
  - A, E, I, O, U, L, N, R, S, T ->	1
  - D, G	-> 2
  - B, C, M, P -> 3
  - F, H, V, W, Y	-> 4
  - K	-> 5
  - J, X	-> 8
  - Q, Z	-> 10

- How to score?
  - Sum the values of all the tiles used in each word. For instance, lets consider the word CABBAGE which has the following letters and point values:
    - 3 points for C
    - 1 point for each A (there are two)
    - 3 points for B (there are two)
    - 2 points for G
    - 1 point for E 
  - Thus, to compute the final total (14 points), we count:
    - 3 + (2 * 1) + (2 * 3) + 2 + 1


#### EXAMPLES AND TEST CASES
- We need a class Scrabble
- It defines an `initialize` method that takes a string as argument
- It also defines a `score` instance method that calculates the score of the given string according to the given letter values (scrabble values)
- An empty input scores 0
- A whitespace of tab scores 0
- A nil input scores 0
- Input string can be of any lenght (must be > 0)
- Input string can be in any case (upper or lowercase)
- Lowercase and uppercase letters have same value according to letter values

#### DATA STRUCTURE
- Hash to store letter values
  - keys are arrays of chars
  - values are the value of these chars according to letter value
- String for input words to calculate
- Integer to calculate value of word
- Array as keys in the hash of letter values

#### ALGORITHM
- compute value of given word according to letter values

- contructor methos downcase input word
- initalize constant to hash where
  - keys are arrays of characters
  - values are the values of the chars in the array 

- define a attribute reader for input string
- define score method to take one argument, the input word
  - iterate input word char by char
    - initialize a counter to 0 
    - if char exist in any of hash's key's array
      - increment the counter with the value of that key
    - otherwise
      - move to next char and repeat
    - return counter when iteration is over
