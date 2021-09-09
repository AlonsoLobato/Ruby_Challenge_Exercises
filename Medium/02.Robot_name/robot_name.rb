class Robot
  @@used_names = []

  def name
    if @name
      return @name
    else
      @name = generate_random_name while @@used_names.include?(@name)
      @@used_names << @name
      @name
    end
  end

  def reset
    @@used_names.delete(@name)
    @name = nil
  end

  def generate_random_name
    letters = ('A'..'Z').to_a.sample(2)
    numbers = (0..9).to_a.sample(3)
    random_name = (letters + numbers).join
  end
end
