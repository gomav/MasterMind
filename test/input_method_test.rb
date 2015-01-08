gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/input_method'

class InputMethodTest < Minitest::Test

  def test_empty_string_default
    user_input = InputMethod.new #failed initially b/c needed attr_reader
    assert_equal "", user_input.input
  end

  def test_player_input
    user_input = InputMethod.new
    puts "\nType 'Hola' to the test: " #screen display for user
    user_input.get #gives you back the user input
    assert_equal "hola", user_input.input #validating user input
  end
end
