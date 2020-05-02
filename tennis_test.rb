require "minitest/autorun"
require "mocha/minitest"
require_relative 'tennis'

class TennisTest < Minitest::Test
  def test_default
    tennis = Tennis.new(player_1: 'Jimmy', player_2: 'Jeff')
    assert_equal(tennis.score, 'love all')
  end

  def test_15_0
    tennis = Tennis.new(player_1: 'Jimmy', player_2: 'Jeff')
    tennis.get_point('Jimmy')
    assert_equal(tennis.score, 'fifteen love')
  end

  def test_15_15
    tennis = Tennis.new(player_1: 'Jimmy', player_2: 'Jeff')
    tennis.get_point('Jimmy')
    tennis.get_point('Jeff')
    assert_equal(tennis.score, 'fifteen all')
  end

  def test_15_30
    tennis = Tennis.new(player_1: 'Jimmy', player_2: 'Jeff')
    tennis.get_point('Jimmy')
    tennis.get_point('Jeff')
    tennis.get_point('Jeff')
    assert_equal(tennis.score, 'fifteen thirty')
  end

  def test_30_0
    tennis = Tennis.new(player_1: 'Jimmy', player_2: 'Jeff')
    tennis.get_point('Jimmy')
    tennis.get_point('Jimmy')
    tennis.get_point('Jeff')
    assert_equal(tennis.score, 'thirty love')
  end

  def test_40_15
    tennis = Tennis.new(player_1: 'Jimmy', player_2: 'Jeff')
    tennis.get_point('Jimmy')
    tennis.get_point('Jimmy')
    tennis.get_point('Jimmy')
    tennis.get_point('Jeff')
    assert_equal(tennis.score, 'forty fifteen')
  end

  def test_40_15
    tennis = Tennis.new(player_1: 'Jimmy', player_2: 'Jeff')
    tennis.get_point('Jimmy')
    tennis.get_point('Jimmy')
    tennis.get_point('Jimmy')
    tennis.get_point('Jeff')
    assert_equal(tennis.score, 'forty fifteen')
  end

  def test_win_15
    tennis = Tennis.new(player_1: 'Jimmy', player_2: 'Jeff')
    tennis.get_point('Jimmy')
    tennis.get_point('Jimmy')
    tennis.get_point('Jimmy')
    tennis.get_point('Jeff')
    tennis.get_point('Jimmy')
    assert_equal(tennis.score, 'jimmy win')
  end

  def test_deuce
    tennis = Tennis.new(player_1: 'Jimmy', player_2: 'Jeff')
    tennis.get_point('Jimmy')
    tennis.get_point('Jimmy')
    tennis.get_point('Jimmy')
    tennis.get_point('Jeff')
    tennis.get_point('Jeff')
    tennis.get_point('Jeff')
    tennis.get_point('Jimmy')
    assert_equal(tennis.score, 'deuce')
  end

  def test_advance
    tennis = Tennis.new(player_1: 'Jimmy', player_2: 'Jeff')
    tennis.get_point('Jimmy')
    tennis.get_point('Jimmy')
    tennis.get_point('Jimmy')
    tennis.get_point('Jeff')
    tennis.get_point('Jeff')
    tennis.get_point('Jeff')
    tennis.get_point('Jeff')
    assert_equal(tennis.score, 'Jeff advance')
  end
end
