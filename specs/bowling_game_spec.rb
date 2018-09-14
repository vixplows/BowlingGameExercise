require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bowling_game.rb'

class TestBowlingGame < Minitest::Test

  def setup
    @bowling_game = BowlingGame.new()
  end

  def test_can_score_a_whole_game
    20.times{@bowling_game.roll(1)}
    assert_equal(20, @bowling_game.score)
  end

  def test_can_score_zero
    20.times{@bowling_game.roll(0)}
    assert_equal(0, @bowling_game.score)
  end

  def test_can_score_a_spare
    @bowling_game.roll(4)
    @bowling_game.roll(6)
    @bowling_game.roll(5)
    17.times{@bowling_game.roll(0)}
    assert_equal(20, @bowling_game.score)
  end


# extension: test tenth frame
  def test_can_score_all_spares
  end

end