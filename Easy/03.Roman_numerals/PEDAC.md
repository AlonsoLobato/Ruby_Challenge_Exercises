#### PROBLEM UNDERSTANDING AND RULES
- I have to write some code to transform numbers from decimals to romans
- The value of roman numbers are: I => 1, V => 5, X => 10, L => 50, C => 100, D => 500, M => 1000
- Any decimal number can be converted to roman by adding and substractic these 7 symbols 
  - II is 2
  - IX is 9
  - CM is 900
  - MCMXC is 1990
  - MMDCCXXXII is 2732 
  - etc.

#### EXAMPLES AND TEST CASES
- Define a class `RomanNumeral`
- Define an `initialize` method that takes a decimal number as argument
- Store the decimal in a `number` instance variable
- No input validation is required
- Define an instance method `to_roman` that transform the `number` to its roman version
- Assume no number larger than 3000 will need to be transformed

#### DATA STRUCTURE
- Use a hash where keys are roman symbols and values their equivalent in decimal numbers
- To determine the roman number we need to identify the value of the decimal number into thousandths, hundredths, tenths and ones
- Use string numbers and indexes to determine the thousandths, hundredths, tenths and ones position

#### ALGORITHM
- Convert decimal to roman method: `to_roman`
- Based on digits index position identify the thousands, hundreds, dozens and ones position digits of a given decimal number
