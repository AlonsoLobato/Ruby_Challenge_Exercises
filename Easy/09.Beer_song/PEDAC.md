#### PROBLEM UNDERSTANDING AND RULES
- Write a program that can generate the lyrics of the 99 Bottles of Beer song. 
- See the test suite for the entire song.

- A number of methods will generate and return a number of verses from the 99 Bottles of Beer song.

- All verses, from larger to smaller, have same structure, depending on the verse number, but verse 0, which is different. 
- For example: 
  - verse 2 is
    `2 bottles of beer on the wall, 2 bottles of beer.`
    `Take one down and pass it around, 1 bottle of beer on the wall.`
  - verses 5 to 2 are
    `5 bottles of beer on the wall, 5 bottles of beer.`
    `Take one down and pass it around, 4 bottle of beer on the wall.`
    `4 bottles of beer on the wall, 4 bottles of beer.`
    `Take one down and pass it around, 3 bottle of beer on the wall.`
    `3 bottles of beer on the wall, 3 bottles of beer.`
    `Take one down and pass it around, 2 bottle of beer on the wall.`
    `2 bottles of beer on the wall, 2 bottles of beer.`
    `Take one down and pass it around, 1 bottle of beer on the wall.`
  - verse 0 is
    `No more bottles of beer on the wall, no more bottles of beer.`
    `Go to the store and buy some more, 99 bottles of beer on the wall.`

- The paragraphs and newlines must be respected

#### EXAMPLES AND TEST CASES
- We need a class `BeerSong`
- The class defines three methods
  - `verse` --> takes one argument and return one verse relative to the argument
  - `verses` --> takes two argumebts and return the verses relatives to the passed arguments
  - `lyrics` --> doesn't take any argument; return all verses from 99 to 1

#### DATA STRUCTURE
- integer as input 
- string as output

#### ALGORITHM
- define a `BeerSong` class
- define three class methods 
  - `verse`, takes 1 int argument and returns a string with verse corresponding to argument
  - `verses`, takes 2 int arguments and returns a strings with verses from first one to second argument, both included
  - `lyrics`, takes no argument and returns a strings with all verses from 99 to 0

- define one instance method that outputs a string corresponding to a verse passed as argument
- the instance method can be called from within each class method above
