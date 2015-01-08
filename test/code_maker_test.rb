gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/code_maker'

class CodeMakerTest < Minitest::Test
  def test_it_has_colors
    code_maker = CodeMaker.new
    assert_equal %w(r b g y), code_maker.colors
  end

  def test_it_has_a_default_code
    code_maker = CodeMaker.new("gggy")
    assert_equal "gggy", code_maker.code
  end

  def test_it_has_a_code_generator
    code_maker = CodeMaker.new
    assert_respond_to code_maker, :code_generator
  end

  def test_it_can_generate_a_code
    code_maker = CodeMaker.new
    assert code_maker.code, "r"
  end
end
