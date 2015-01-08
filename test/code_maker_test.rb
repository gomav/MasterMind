# require 'test_helper'
require_relative '../lib/code_maker'

class CodeMakerTest < Minitest::Test

  def test_new_code_has_four_elements
    code_maker = CodeMaker.new
    assert_equal 4, code_maker.code.length
  end

  def test_new_code_has_red_blue_green_yellow
    code_maker = CodeMaker.new
    code_maker.code.chars.each do |color|
      assert %W(r g b y).include? color
    end
  end

  def test_it_makes__random_codes
    code_maker1 = CodeMaker.new
    code_maker2 = CodeMaker.new
    code_maker3 = CodeMaker.new
    refute code_maker1.code == code_maker2.code &&
           code_maker1.code == code_maker3.code &&
           code_maker2.code == code_maker3.code
  end
end
