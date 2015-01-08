class GameLauncher

  attr_reader :user_input,
              :display,
              :code_maker,
              :guesses,
              :win_condition,
              :results_array

  def initialize(input_method_from_cli, display_from_cli, code_maker = nil)
    @display       = display_from_cli
    @code_maker    = CodeMaker.new
    @guesses       = []
    @user_input    = input_method_from_cli
    @results_array = []
    @win_condition = [4, 4]

  end

  def play #look at "game.rb" in numbermind

    display.game_play
    until win? || quit?
      display.player_guess
      user_input.get
      case
      when quit?
        display.game_quit
      when input_too_short?
        display.input_too_short
      when input_too_long?
        display.input_too_long
      when not_valid_colors?
        display.invalid_input
      when win? && guesses.length == 0
        guesses << 1 if guesses.length == 0
        display.winner(code_maker.code, guesses.length)
      when win?
        guesses << user_input.input
        display.winner(code_maker.code, guesses.length)
      else
        process_results
        display.response(user_input.input, results_array, guesses.length)
      end

    end

  end

  def process_results
    guesses << user_input.input
    @results_array = GuessChecker.validate(code_maker.code, @user_input.input)
  end

  def not_valid_colors?

    holdvalue = user_input.input.chars
    @code_maker.colors.each {|char| holdvalue.delete(char)}
    !holdvalue.empty? #no ! caused player input to not be accepted
  end

  def input_too_short?
    user_input.input.length < 4
  end

  def input_too_long?
    user_input.input.length > 4
  end

  def win?
    @results_array = GuessChecker.validate(code_maker.code, user_input.input)
    results_array == win_condition
  end

  def quit?
    user_input.input == 'q' || user_input.input == 'quit'
  end

end
