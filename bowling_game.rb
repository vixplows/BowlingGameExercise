class BowlingGame

  def initialize()
    @rolls = []
  end

  def roll(number_of_pins)
    @rolls.push(number_of_pins)
  end

  def score
    @rolls.sum
  end
  
end