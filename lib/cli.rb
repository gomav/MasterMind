class Cli

  attr_reader :user_input, :display

  def initialize(streamout)
    @user_input = InputMethod.new
    @display    = Display.new(streamout)
  end

  def initial_screen #display = display.rb
      display.initial_screen
      display.player_command
      @user_input.get
      @user_input.input
  end

  def game_start
    game = GameLauncher.new(@user_input, @display)
    game.play
  end

  def start
    display.initial_message
    until quit?
      initial_screen
      case
      when play?                    then game_start
      when instructions?            then display.game_instructions
      when quit?                    then display.game_quit
      else
        display.invalid_input
      end
    end
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
