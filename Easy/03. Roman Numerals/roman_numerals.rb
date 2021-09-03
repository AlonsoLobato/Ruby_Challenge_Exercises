# Ruby challenges: Easy 1 - Roman Numerals
# Write some code that converts modern decimal numbers into their Roman number equivalents.

ROMANS = { 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI", 7 => "VII", 8 => "VIII", 9 => "IX", 
           10 => "X", 20 => "XX", 30 => "XXX", 40 => "XL", 50 => "L", 60 => "LX", 70 => "LXX", 80 => "LXXX", 90 => "XC", 
           100 => "C", 200 => "CC", 300 => "CCC", 400 => "CD", 500 => "D", 600 => "DC", 700 => "DCC", 800 => "DCCC", 900 => "CM", 
           1000 => "M", 2000 => "MM", 3000 => "MMM"}

class RomanNumeral

  attr_reader :decimal

  def initialize(decimal)
    @decimal = decimal
  end

  def to_roman
    roman_number = ''
    determine_positions(decimal).each do |decimal_position|
      roman_number << ROMANS[decimal_position] unless decimal_position.zero? 
    end
    roman_number
  end

  private

  def determine_positions(num)
    ones = num % 10
    tens = (num - ones) % 100
    hundreds = (num - (tens + ones)) % 1000
    thousands = (num - (hundreds + tens + ones)) % 10000

    [thousands, hundreds, tens, ones]
  end
end
