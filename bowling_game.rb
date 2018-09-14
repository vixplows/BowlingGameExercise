class BowlingGame

  def initialize()
    @score = 0
    @rolls = []
  end

  def roll(number_of_pins)
    @rolls.push(number_of_pins)
  end

  def score()
    score_log = 0
    roll_index = 0

    10.times do
      if @rolls[roll_index] + @rolls[roll_index + 1] == 10
        score_log += @rolls[roll_index] + @rolls[roll_index + 1] + @rolls[roll_index + 2]
      else
        score_log += @rolls[roll_index] + @rolls[roll_index + 1] 
      end
      roll_index += 2
    end
    @score = score_log
  end
  
end