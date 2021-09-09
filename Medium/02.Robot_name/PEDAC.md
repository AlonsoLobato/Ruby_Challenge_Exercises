#### PROBLEM UNDERSTANDING AND RULES
- Write a program that manages robot factory settings.

- When robots come off the factory floor, they have no name. The first time you boot them up, a random name is generated, such as RX837 or BC811.

- Every once in a while, we need to reset a robot to its factory settings, which means that their name gets wiped. The next time you ask, it will respond with a new random name.

- The names must be random; they should not follow a predictable sequence. Random names means there is a risk of collisions. Your solution should not allow the use of the same name twice when avoidable.

#### EXAMPLES AND TEST CASES
- Define a class `Robot`
- Define 2 instance methods for `Robot`
  - `name` - that generates a random value for instance variable `name` - that value is a string
  - `reset` - that reassign the value of instance variable `name` to a new value randomly generated
  - the random values for `name` instance variable follow the pattern: two uppercase a-z and 3 numbers: `RX837` or `BC811`

#### DATA STRUCTURE
- string for randomly generated values of `name`
- array to keep track of previous values assigned to `name` (to not to repeat them)

#### ALGORITHM
