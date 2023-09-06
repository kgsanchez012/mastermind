module Display
    def display_intro
        "Welcome to Mastermind! \n\n"
    end

    def display_role_prompt
        "Enter your name. Then, choose whether to be the Coder or Decoder:"
    end

    def display_role(role)
        "You are the #{role}!"
    end

    def display_decoder_start
        "Try to guess the four-color code: [?, ?, ?, ?].
        \nYour hints are X for a correct color and location and O for a correct color but wrong location."
    end

    def display_coder_start
        "Choose four letters to define the colors and order of your secret code, then the decoder will try to guess it.
        \nR = Red, O = Orange, Y = Yellow, G = Green, B = Blue, V = Violet."
    end

    def display_feedback(guess, hint, turns)
        "Your guess was: #{guess}. Your hint is #{hint}. There are #{turns} turns left!
        \n\nTry to guess the code: [?, ?, ?, ?]..."
    end

    def display_input_warning
        "The code cannot have duplicate colors. Please try again."
    end

    def display_win
        "The decoder has guessed the code correctly and won! Game over!"
    end

    def display_lose
        "The decoder has failed to guess the code and lost. Game over."
    end
end