
#### PROBLEM UNDERSTANDING AND RULES
- To be a valid triangle, each side length must be greater than 0.
- To be a valid triangle, the sum of the lengths of any two sides must be greater than the length of the remaining side.
- An equilateral triangle has three sides of equal length.
- An isosceles triangle has exactly two sides of the equal length.
- A scalene triangle has three sides of unequal length (no two sides have equal length).

#### EXAMPLES AND TEST CASES
- We need to create a new class `Triangle`
- The `initialize` method takes 3 arguments: the lenght of the three sides of a triangle
- Integers and float numbers are accepted
- This method should ensure that
  - All input side lenghts are greater than 0
    - Otherwise an ArgumentError should be raised
  - The sum of any two sides must always be greater than the lenght of the third side
    - Otherwise an ArgumentError shoud be raised
- There is an instance method called `kind` that returns a string according to the kind of triangle based on the lenght of the three sides
  - If the three sides have same lenght, the triangle is `equilateral` so that string is returned
  - If any two sides have same lenght, the triangle is `isosceles` so that string is returned
  - If the three sides have different lenghts (i.e. no two sides with same lenght), the triangle is `scalene` so that string is returned 

#### DATA STRUCTURE
- We need to define an Triangle class and instantiate objects of this class
- We would need to work with integers and float numbers
- A triangle has three sides; where to store this info?
  - Array with three values?
  - Three separate instance variables?  

#### ALGORITHM
- Define a Triangle class
- Define an initialize class that takes 3 arguments
- Store the arguments in an array
- Check that all arguments are larger than 0
- Check that the triangle is valid
  - The sum of any two sides (any two args) is larger than the other side (the other arg)
- If any of the two previous requirements failed, return an ArgumentError
- Define a kind instance method for Triangle class objects
- kind inspect the three arguments in the array and determine the type of triangle it is
  - If all three sides have same value, return the string `equilateral`
  - If only two sides have same value, return the string `isosceles`
  - If no two sides have same value, return the string
  `scalene`
