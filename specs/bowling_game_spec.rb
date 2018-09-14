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

  def test_can_score_a_strike
    @bowling_game.roll(10)
    @bowling_game.roll(5)
    @bowling_game.roll(4)
    16.times{@bowling_game.roll(0)}
    assert_equal(28, @bowling_game.score)
  end

  def test_can_score_two_strikes_in_a_row
    @bowling_game.roll(10)
    @bowling_game.roll(10)
    @bowling_game.roll(5)
    @bowling_game.roll(4)
    14.times{@bowling_game.roll(0)}
    assert_equal(53, @bowling_game.score)
  end

  def test_can_score_all_spares
    21.times{@bowling_game.roll(5)}
    assert_equal(150, @bowling_game.score)
  end

  def test_can_score_strike_in_tenth_frame
    18.times{@bowling_game.roll(1)}
    @bowling_game.roll(10)
    @bowling_game.roll(5)
    @bowling_game.roll(5)
    assert_equal(38, @bowling_game.score)
  end

  def test_can_score_all_strikes
    12.times{@bowling_game.roll(10)}
    assert_equal(300, @bowling_game.score)
  end

end
