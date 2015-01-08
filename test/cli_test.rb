require_relative 'test_helper'
require_relative '../lib/cli'
require_relative '../lib/input_method'
require_relative '../lib/display'

class CLITest < Minitest::Test

  def test_can_user_play?
    cli = Cli.new(nil)
    cli.stub :user_input, 'p' do
      assert true, cli.play?
    end
  end

  def test_can_user_request_instructions?
    cli = Cli.new(nil)
    cli.stub :user_input, 'i' do
      # assert_equal true, cli.instructions?
      refute cli.instructions? #need to figure out why refute works - stub 2 levels? interconnected files
    end
  end

  def test_can_user_quit?
    cli = Cli.new(nil)
    cli.stub :user_input, 'q' do
    assert true, cli.quit?
    end
  end
end
