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
      if strike?(roll_index)
        insert_nil_after_strike(roll_index)
        score_log += strike_score(roll_index)
      elsif spare?(roll_index)
        score_log += spare_score(roll_index)
      else
        score_log += @rolls[roll_index] + @rolls[roll_index + 1] 
      end
      roll_index += 2
    end
    @score = score_log
  end

  private
  def strike?(roll_index)
    @rolls[roll_index] == 10
  end

  private
  def strike_score(roll_index)
    @rolls[roll_index] + @rolls[roll_index + 2] + @rolls[roll_index + 3]
  end

  private
  def insert_nil_after_strike(roll_index)
    @rolls.insert(roll_index + 1, nil)
  end

  private
  def spare?(roll_index)
    @rolls[roll_index] + @rolls[roll_index + 1] == 10
  end

  private
  def spare_score(roll_index)
    @rolls[roll_index] + @rolls[roll_index + 1] + @rolls[roll_index + 2]
  end
  
end