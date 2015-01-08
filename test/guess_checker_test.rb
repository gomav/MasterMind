require_relative './test_helper'
require_relative '../lib/guess_checker'

class GuessCheckerTest < Minitest::Test

  def test_check_guess_correct
    code_maker= ("yyyy")
    assert_equal [4,4], GuessChecker.validate(code_maker, "yyyy")
  end

  def test_check_guess_incorrect
    code_maker = ("gbyy")
    assert_equal [0, 0], GuessChecker.validate(code_maker, "rrrr")
  end

  def test_check_two_correct_placements_and_three_colors
    code_maker = ("yrbg")
    assert_equal [2,3], GuessChecker.validate(code_maker, "yrgr")
  end
end
