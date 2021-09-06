class BeerSong
  def self.verse(verse_number)
    self.new.sing_verse(verse_number)
  end

  def self.verses(start_verse, end_verse)
    verses_to_print = []
    (end_verse..start_verse).reverse_each do |verse_number|
      verses_to_print << verse(verse_number)
    end
    verses_to_print.join("\n")
  end

  def self.lyrics
    verses_to_print = []
    (0..99).reverse_each do |verse_number|
      verses_to_print << verse(verse_number)
    end
    verses_to_print.join("\n")
  end

  def sing_verse(num)
    if num == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif num == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n" 
    elsif num == 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    else
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, #{num - 1} bottles of beer on the wall.\n" 
    end
  end
end
