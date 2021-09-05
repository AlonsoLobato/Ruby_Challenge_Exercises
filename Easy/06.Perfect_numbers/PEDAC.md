#### PROBLEM UNDERSTANDING AND RULES
- Write a program that can tell whether a number is perfect, abundant, or deficient
- Perfect numbers have an Aliquot sum that is equal to the original number
- Abundant numbers have an Aliquot sum that is greater than the original number
- Deficient numbers have an Aliquot sum that is less than the original number
- The sum of the positive divisors of a number is the Aliquot number

- Positive divisors: the numbers that can be evenly divided into the target number with no remainder, excluding the number itself

- Input: Integer - a number of the user's choice
- Output: String - perfect, abundant or deficient, according to the type of number

#### EXAMPLES AND TEST CASES
- 6 is a perfect number since its divisors are 1, 2, and 3, and 1 + 2 + 3 = 6.
- 15 is a deficient number since its divisors are 1, 3, and 5 and 1 + 3 + 5 = 9 which is less than 15.
- 24 is an abundant number since its divisors are 1, 2, 3, 4, 6, 8, and 12 and 1 + 2 + 3 + 4 + 6 + 8 + 12 = 36 which is greater than 24.
- Prime numbers 7, 13, etc. are always deficient since their only divisor is 1.

- If number is negative, the number doesn't fall into any category
- If number is prime, is always deficient

#### DATA STRUCTURE
- Integers
- Strings

#### ALGORITHM
- Create a class `PerfectNumber`
- Define an `classify` class method that takes an integer as argument and returns an integer that tells the type of number it is (abundant, deficient or perfect), comparing the number with its Aliquot sum

- Calculate Aliquot sum of input number
  - Obtain all positive divisors of that number
    - From 1 upto the number (number not included), divide number by each of these and select those where the division leave no remainder
  - Add them up
  - Compare the input number with result of the sum
    - If larger than number, return string `abundant`
    - If smaller than number, return string `deficient`
    - If equal than number, return string `perfect`
