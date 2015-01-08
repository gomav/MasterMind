gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/display'

class DisplayTest < Minitest::Test

  def test_initial_message
    display.initial_message
    assert_equal "Welcome to MASTERMIND"
  end
end
#need to cycle through messages instead of just
#assert_equal.
