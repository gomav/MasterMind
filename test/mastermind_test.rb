require_relative 'test_helper'
require_relative '../lib/runner'
require_relative '../lib/input_method'
require_relative '../lib/display'
require_relative '../lib/mastermind'

class MasterMindTest < Minitest::Test

  def test_it_exists
    assert MasterMind
  end

  def test_input_too_short?
    user_input = InputMethod.new
    assert_equal true, user_input.input.length < 4
  end

  def test_input_too_long?
    user_input = InputMethod.new
    assert true, user_input.input.length > 4
  end
end
