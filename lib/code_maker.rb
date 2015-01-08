require 'colorize'
class CodeMaker
  attr_reader :colors,
              :code,
              :difficulty

  def initialize
    @difficulty = difficulty
    @colors = %w(r b g y)
    @code = colors.map { colors.sample }.join
    puts "Here is the secret code: #{code}".yellow
  end

  def novice
    @code
  end

  def intermediate
    intermediate = %w(r b g y p b)
    code = colors.map { colors.sample }.join
    puts "Here is the secret code: #{code}.yellow"
  end

  def advanced
    advanced = %w(r b g y p m r g)
    code = colors.map { colors.sample }.join
    puts "Here is the secred code: #{code}.yellow"
  end

end
