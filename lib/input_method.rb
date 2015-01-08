class InputMethod

  attr_reader :input

  def initialize
    @input = ""
  end

  def get
    @input = STDIN.gets.downcase.strip
  end
end


### needed to add STDIN for Rake Test to work ###
