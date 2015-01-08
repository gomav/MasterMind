require 'colorize'

class Runner

  attr_reader :user_input,
              :display,
              :difficulty

  def initialize(streamout)
    @user_input = InputMethod.new
    @display    = Display.new(streamout)
  end

  def initial_screen
      puts display.initial_screen.green
      puts display.player_command.green
      @user_input.get
      @user_input.input
  end

  def game_start
    game = MasterMind.new(@user_input, @display)
    game.play
  end

  def start
     puts display.initial_message
    until quit?
      initial_screen
      case
      when play?                    then puts display.choose_difficulty_message
      when instructions?            then puts display.game_instructions.yellow
      when quit?                    then puts display.game_quit.yellow
      else
        puts display.invalid_input
      end
    end
  end

  def choose_difficulty(something)
    display.choose_difficulty_message
    @difficulty = gets.strip
    case
    when novice?                    then @difficulty = 4
    when intermediate?              then @difficulty = 6
    when advanced                   then @difficulty = 8
    else
      puts display.please_try_again
      choose_difficulty_message
    end
    #game.play
  end

  	def novice?
		difficulty == "n" || difficulty == "beginner"
	end

	def intermediate?
		difficulty == "i" || difficulty == "intermediate"
	end

	def advanced?
		difficulty == "a" || difficulty == "hard"
	end

  def play?
    @user_input.input == 'p' || @user_input.input == 'play'
  end

  def instructions?
    @user_input.input == 'i' || @user_input.input == 'instructions'
  end

  def quit?
    @user_input.input == 'q' || @user_input.input == 'quit'
  end
end
