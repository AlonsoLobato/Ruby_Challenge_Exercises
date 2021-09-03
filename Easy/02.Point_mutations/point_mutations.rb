# Ruby challenges: Easy 1 - Point Mutations
# Write a program that can calculate the Hamming distance between two DNA strands

class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(another_strand)
    if another_strand == ' '
      min_size = 0
    else
      min_size = [strand, another_strand].min_by(&:size).size
    end
    
    strand[0...min_size]
    another_strand[0...min_size]

    distance = 0
    idx = 0

    while idx < min_size
      distance += 1 if strand[idx] != another_strand[idx]
      idx += 1
    end

    distance
  end
end
