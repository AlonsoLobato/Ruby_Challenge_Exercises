#### PROBLEM UNDERSTANDING AND RULES
- Implement octal to decimal conversion
- Given an octal input string, your program should produce a decimal output. Treat invalid input as octal 0.

- Input: string that represents an octal number
- Output: integer that represents a decimal number

- Octal (base-8 numbers)
  - To obtain the deciaml representation of a given octal number, from right to left, we multiply each digit in the octal by 8 raised to the 0,1,2,etc power, until we reach the first digit (the leftmost digit in the number). Then we add up the result of these multiplications and the result is the decimal representation of an octal. This is how we convert octal numbers to decimal numbers.
-  the formula is something like digit * 8^digit_position
- octal numbers can only be represented in digits from 0 to 7
  - any octal that includes 8 or 9 isn't a valid octal


#### EXAMPLES AND TEST CASES
- Return 0 is input octal includes a char other than 0-7 (8, 9, letters or other punctuation)

#### DATA STRUCTURE
- String for input octal
- Integer for output decimal
- Array to perform operation of digits to calculate decimal from octal?

#### ALGORITHM
- define a class `Octal`
- define a `initialize` method that takes a string as argument
  - store input in instance variable `@octal`
  - define getter method for `@octal`

- define a `to_decimal` isntance method that convert input string representation of octal number to decimal number
  - pass value of `@octal` to instance method via getter method `octal`
  - if `octal` include any char other than 0 to 7, return 0
  - otherwise, transfor input to decimal number
    - call helper method `octal_to_decimal`
      - takes an argument
      - breaks up the number into digits, reverse its order (last idx number will be in 0 idx position) and multiplies each digit by its idx
      - add up all these multiplication
      - return result
