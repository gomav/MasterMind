require_relative 'test_helper'
require_relative '../lib/runner'
require_relative '../lib/input_method'
require_relative '../lib/display'
require_relative '../mastermind'

class RunnerTest < Minitest::Test

  def test_can_user_play?
    sprint = Runner.new(nil)
    sprint.stub :user_input, 'p' do
      assert true, sprint.play?
    end
  end

  def test_can_user_request_instructions?
    sprint = Runner.new(nil)
    sprint.stub :user_input, 'i' do
      refute sprint.instructions?
    end
  end

  def test_can_user_quit?
    sprint = Runner.new(nil)
    sprint.stub :user_input, 'q' do
    assert true, sprint.quit?
    end
  end
end
