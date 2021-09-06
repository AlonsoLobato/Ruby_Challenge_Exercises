class Octal
  def initialize(integer)
    @octal = integer
  end

  def to_decimal
    valid_octal? ? octal_to_decimal : 0
  end
  
  private

  attr_reader :octal

  def valid_octal?
    !!!(/[^0-7]/ =~ (octal))
  end

  def octal_to_decimal
    (octal.to_i.digits.map.with_index do |digit, idx|
      digit * 8**idx
    end).sum
  end
end
