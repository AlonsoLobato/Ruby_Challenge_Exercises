class Series
  attr_reader :string_num

  def initialize(str)
    @string_num = str
  end

  def slices(length)
    if length > string_num.length
      raise ArgumentError.new
    else
      string_num.chars.map(&:to_i).each_cons(length).to_a
    end
  end
end
