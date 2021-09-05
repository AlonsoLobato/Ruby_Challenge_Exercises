class PerfectNumber
  def self.classify(number)
    raise StandardError.new if number <= 0
    temp = (1...number).select { |int| number % int == 0 }.reduce(&:+)
    case 
      when temp > number
        return 'abundant'
      when temp < number 
        return 'deficient'
      when temp == number 
        return 'perfect'
    end
  end
end
