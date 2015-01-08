class Display
  # attr_reader :display

  def initialize(streamout)
    @streamout = streamout
  end

  def initial_message
    puts "\nWelcome to MASTERMIND!\n"
  end

  def initial_screen
    puts "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def player_command
    puts "Enter your command: "
  end

  def game_instructions
    puts "The game will generate a sequence with four elements made up of: " +
          "(r)ed, (g)reen, (b)lue, and (y)ellow. The sequence will look like 'rbgy'."
  end

  def player_guess
    puts "\nPlease make a guess:"
  end

  def invalid_input
    puts "Your answer is not valid, please try again."
  end

  def input_too_long
    puts "Your answer is too long, please try again"
  end

  def input_too_short
    puts "\nYour answer is too short, please try again"
  end

  def game_quit
    puts "\nQuitter! I mean...thank you for playing."
  end

  def game_play
    puts "\nThe game has generated a beginner sequence with four elements made" +
         "up of (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to" +
         "end the game."
  end

  def response(input, results, guesses)
    puts "\n\nGood guess!'#{input}' has #{results[1]} of the correct colors with " +
         "#{results[0]} in the correct positions. You've taken #{guesses} guesses."
  end

  def winner(code, guesses)
    puts "\n\nNicely done, You win! You guessed the correct code '#{code}' in" +
         "#{guesses} guesses."
  end
end
