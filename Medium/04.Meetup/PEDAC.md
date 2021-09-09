#### PROBLEM UNDERSTANDING AND RULES
- In this program, we'll construct objects that represent a meetup date.
- Each object takes a month number (1-12) and a year (e.g., 2021).
- The object should be able to determine the exact date of the meeting in the specified month and year.

- For instance, if we ask for the 2nd Wednesday of May 2021, the object should be able to determine that the meetup for that month will occur on the 12th of May, 2021.

- Rules
  - April, June, September, and November have 30 days.
  - February has 28 in most years, but 29 in leap years.
  - All the other months have 31 days.

  - The first day of the week of the month (DOWM) is always between the 1st and 7th of the month
  - The second DOWM is between the 8th and 14th of the month.
  - The third DOWM is between the 15th and 21st of the month.
  - The fourth DOWM is between the 22nd and 28th of the month.
  - The fifth DOWM is between the 29th and 31st of the month.
  - The last DOWM is between the 22nd and the 31st of the month depending on the number of days in the month.
   - The teenth DOWM is between the 13th and the 19th of the month.

- `Date`class
  - to work with objects from the `Date` class we need to `require 'date'`
  - the format of the dates returned by a `Date` objects is `yyyy-mm-dd`
  - to instantiate a `Date` object we execute `Date.civil(yyyy, mm, dd)` being `yyyy`, `mm` and `dd` integers that represent a year, month and day. 
  - if we input negative arguments to `mm` and `dd` the `civil` method will return the `mm` and `dd` deducting from 12 and 31/30/29/28 according to the month and number of days of the month. Incorrect inputs will raise an Error: invalid date


#### EXAMPLES AND TEST CASES
- We need a class `Meetup`

- It defines an `initialize` method that takes two integers: a year (YYYY) and a month (MM)

- It defines an instance  method `day` that takes two strings: day of week(mon, tue...sun) and a numeral (first, second, third, fourth, fifth and teenth) and returns the exact date combining the four inputs: year, month, day of week and numeral as a `Date` object
  - Ex. for the input 2021, 05, Wed, second -> the program should return `2021-05-12` (YY-MM-DD)
- If the input corresponds to an impossible date, the program returns `nil`
  - Ex. for the input 2015, 10, Tue, fifth -> that date doesn't exist, so `nil` is returned

- Re. teenth: it corresponds to the days between 13 and 19 of each months (these days end in teenth; fourteenth, seventeenth, nineteenth, etc.). There are exactly and only 7 days of the month. So if teenth is passed to `day` method, it should return the corresponding day of the week withing these 7 days (between 13th and 19th). That is, every month has exactly one "teenth" Monday, one "teenth" Tuesday, etc. 

- Re. fifth: The fifth day of the month may not happen every month.

- The case of the strings passed to `day` doesn't matter (case insensitive): Fifth == fifth == fifTH, etc.

#### DATA STRUCTURE
- Strings for input
- Integers for input
- Date objects for output

#### ALGORITHM
- We need to determine the 7 days period in which the meetup will occur and then search that range of dates for the date that matches the desired day of week

- Define `Meetup` class
- Define `initialize` method
  - takes two args: `year` and `month` -> assign to instance variables
  - calculate last day of month / number of days in month with `Date.civil(year, month, -1)`. Need to `require 'date'` to operate with `Date` objects

- Define `say` instance method
  - takes two args: day of week and ordinal
  - operate with `year`,  `month`, `day_week` and `ordinal` to generate new `Date` object
