require 'colorize'
class MasterMind

  attr_reader :user_input,
              :display,
              :code_maker,
              :guesses,
              :win_condition,
              :results_array,
              :difficulty

  def initialize(input, display, code_maker = nil)
    @display       = display
    @code_maker    = CodeMaker.new
    @guesses       = []
    @user_input    = input
    @results_array = []
    @win_condition = [4, 4]
    @difficulty    = difficulty
  end

  def play
    display.game_play
    until win? || quit?
      puts display.player_guess.green
      user_input.get
      case
      when quit?                    then puts display.game_quit.green
      when input_too_short?         then puts display.input_too_short.red
      when input_too_long?          then puts display.input_too_long.red
      when not_valid_colors?        then puts display.invalid_input.red
      when win? && guesses.length == 0
        guesses << 1 if guesses.length == 0
        puts display.winner(code_maker.code, guesses.length).yellow
      when win?
        guesses << user_input.input
        puts display.winner(code_maker.code, guesses.length)
      else
        process_results
        puts display.response(user_input.input, results_array, guesses.length)
      end
    end
  end

  def process_results
    guesses << user_input.input
    @results_array = GuessChecker.validate(code_maker.code, @user_input.input)
  end

  def not_valid_colors?
    holdvalue = user_input.input.chars
    @code_maker.colors.each {|elements| holdvalue.delete(elements)}
    !holdvalue.empty?
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
