#### PROBLEM UNDERSTANDING AND RULES
- Write a program that will take a string of digits and return all the possible consecutive number series of a specified length in that string.

- For example, the string "01234" has the following 3-digit series:
  - 012
  - 123
  - 234
- The same string has the followinf 4-digits series:
  - 0123
  - 1234

- If asked for a x-digit series larger than the size of the given string, the program should raise an error  

#### EXAMPLES AND TEST CASES
- We need a `Series` class
- Defines an `initialize` method that takes a string digits as argument
- Defines a `slices` instance method that takes an integer as argument and returns an array of arrays, where each subarray is a serie of X consecutive digits, where X corresponds to the integer argument

#### DATA STRUCTURE
- String 
- Integer
- Array

#### ALGORITHM
- Define `Series` class
- Define `initialize` constructor that takes a string of digits and assign it to an instance variable `@string_num`
- Define a getter method for the instance variable
- Define a `slices` instance method that takes an integer as arg and slices `@string_num` into as many chunks as possible of input argument lenght

- `slices` method
  - convert `@string_num` to array and map it to convert each char into an integer
  - iterate array of integer and obtain each consecutive X digits, being X the argument that the method takes
  - if the argument is larger that the size of `@string_num`, raise an ArgumentError
