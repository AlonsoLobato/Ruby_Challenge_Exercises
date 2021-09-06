#### PROBLEM UNDERSTANDING AND RULES
- Write a program that, given a natural number and a set of one or more other numbers, can find the sum of all the multiples of the numbers in the set that are less than the first number. 
- If the set of numbers is not given, use a default set of 3 and 5.
- For instance, if we list all the natural numbers up to, but not including, 20 that are multiples of either 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18. The sum of these multiples is 78.

- Input: integer (natural number) and set of integers
- Ouput: integer that is the sum of all numbers that are multiples of set of integers between 1 and the input number (not included)

#### EXAMPLES AND TEST CASES
- if no arguments are passed to constructor method, set of integers are setup to 3 and 5
- `to` is a class method

#### DATA STRUCTURE
- integer for input and output
- array to store set of arguments passed to constructor?

#### ALGORITHM
- Define a class `SumOfMultiples`
- Define an `initialize` method that takes a set of integer arguments
- If no argument passed to constructor, arguments are initialize to 3 and 5
- Define `to` class method that takes an integer argument
  - `to` calculates the sum of all numbers from 1 to the given argument (not included) that are multiples of all the arguments passed to constructor (they'd be 3 and 5 if no arg is passed to constructor)
