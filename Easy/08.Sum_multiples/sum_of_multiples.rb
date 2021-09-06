class SumOfMultiples
  def initialize(*arg)
    @set = arg.to_a
  end
  
  def to(max)
    multiples_of(set, max).sum
  end
  
  def self.to(max)
    SumOfMultiples.new(3,5).to(max)
  end
  
  private
  
  attr_reader :set
  
  def multiples_of(target_nums, max_num)
    (1...max_num).select do |num|
      target_nums.any? do |target|
        num % target == 0
      end
    end
  end
end
