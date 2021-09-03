class Scrabble

  LETTER_VALUES = { 
  ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] => 1,
  ['D', 'G'] => 2,
  ['B', 'C', 'M', 'P'] => 3,
  ['F', 'H', 'V', 'W', 'Y'] => 4,
  ['K'] => 5,
  ['J', 'X'] => 8,
  ['Q', 'Z'] => 10
  }

  def initialize(word)
    @word = word
  end

  def score
    return 0 if word == nil
    
    score = 0
    LETTER_VALUES.each do |arr, val|
      word.each_char do |char|
        score += val if arr.include?(char.upcase)
      end
    end
    score
  end

  def self.score(str)
    Scrabble.new(str).score
  end

  private

  attr_accessor :word
end
