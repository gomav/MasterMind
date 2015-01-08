class CodeMaker
  attr_reader :colors, :code
  def initialize
    @colors = %w(r b g y)
    @code = colors.map { colors.sample }.join
    puts "Here is the secret code: #{code}"
  end
end
