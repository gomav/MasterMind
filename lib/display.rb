class Display

  def initialize(streamout)
    @streamout = streamout
  end

  def initial_message
    "\nWelcome to MASTERMIND!\n\n" +
      "███╗   ███╗ █████╗ ███████╗████████╗███████╗██████╗ ███╗   ███╗██╗███╗   ██╗██████╗
████╗ ████║██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║████╗  ██║██╔══██╗
██╔████╔██║███████║███████╗   ██║   █████╗  ██████╔╝██╔████╔██║██║██╔██╗ ██║██║  ██║
██║╚██╔╝██║██╔══██║╚════██║   ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║██║╚██╗██║██║  ██║
██║ ╚═╝ ██║██║  ██║███████║   ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚████║██████╔╝
╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═════╝
                                                                                    "
  end

  def initial_screen
    "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def player_command
    "Enter your command: "
  end

  def game_instructions
    "\nThe game has generated a beginner, intermediate, and advanced sequence. " +
    "\nThe beginner sequence has four elements made up of: (r)ed, (g)reen, (b)lue, " +
    "\nand (y)ellow; entered at rgby." +
    "\n\nThe intermediate sequence has five elements made up of: (r)ed, " +
    "\n(b)lue, (g)reen, (y)ellow, and (p)urple; entered as rgbyp." +
    "\n\nThe advanced sequence has 6 elements made up of (r)ed, (b)lue, (g)reen," +
    "\n(y)ellow, (p)urple, and (m)agenta; entered as rbgypm" +
    "\n\nUse (q)uit at any time to end the game."
  end

  def player_guess
    "\nPlease make a guess:"
  end

  def invalid_input
    "Your input is not valid, please try again."
  end

  def input_too_long
    "Your answer is too long, please try again"
  end

  def input_too_short
    "\nYour answer is too short, please try again"
  end

  def game_quit
    puts "\nQuitter! oh...I mean...thank you for playing."
    system('say "Quitter! oh...I mean...thank you for playing."')
  end

  def game_play
    "\nThe game has generated a beginner sequence with four elements made " +
         "up of (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to " +
         "end the game."
  end

  def response(input, results, guesses)
    "\n\nGood guess!'#{input}' has #{results[1]} of the correct colors with " +
         "#{results[0]} in the correct positions. You've taken #{guesses} guesses."
  end

  def winner(code, guesses)
    "\n\nNicely done, You win! You guessed the correct code '#{code}' in " +
         "#{guesses} guesses."
  end

  def please_try_again
    "Please try again."
  end

  def choose_difficulty_message
    puts "\nPlease choose your level of difficulty:" +
         "\n(n)ovice, (i)ntermediate, (a)dvanced" +
         "\n\nYou can use (q)uit at any time to end the game."
  end
end
