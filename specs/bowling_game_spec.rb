require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bowling_game.rb'

class TestBowlingGame < Minitest::Test

  def setup
    @bowling_game = BowlingGame.new()
  end

  def test_can_get_score
    assert_equal(2, @bowling_game.score)
  end
  
end