require_relative './test_helper'
require_relative '../lib/input_method'

class InputMethodTest < Minitest::Test

  def test_empty_string_default
    user_input = InputMethod.new
    assert_equal "", user_input.input
  end

  def test_player_input
    user_input = InputMethod.new
    puts "\nType 'Hola' to the test: "
    user_input.get
    assert_equal "hola", user_input.input
  end
end
