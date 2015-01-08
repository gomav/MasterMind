gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess_checker'
require_relative '../lib/code_maker'

class GuessCheckerTest < Minitest::Test

  def test_check_guess_correct
    code_maker=CodeMaker.new("yyyy")
    assert_equal [4,4], GuessChecker.validate(code_maker.code, "yyyy")
  end

  def test_check_guess_incorrect

    code_maker=CodeMaker.new("yyyy")
    assert_equal [0, 0], GuessChecker.validate(code_maker.code, "rrrr")
  end

  def test_check_two_correct_placements_and_three_colors
    code_maker=CodeMaker.new("yrbg")
    assert_equal [2,3], GuessChecker.validate(code_maker.code, "yrgr")
  end
end
