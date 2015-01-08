class InputMethod

  attr_reader :input

  # def initialize(input) - "not sure why this did not work"
  #   @input = input


  def initialize
    @input = ""#player input
  end

  def get
    @input = gets.downcase.strip
  end

end
