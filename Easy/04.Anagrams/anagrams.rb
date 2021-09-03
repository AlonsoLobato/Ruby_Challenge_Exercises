class Anagram
  def initialize(word)
    @word = word
  end

  def match(possible_anagrams)
    possible_anagrams.select do |anagram|
      anagrams?(word.downcase, anagram.downcase)
    end
  end

  private

  attr_reader :word

  def anagrams?(str1, str2)
    return false if str1 == str2
    str1.chars.sort == str2.chars.sort
  end
end
