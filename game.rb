require_relative 'display.rb'

class Game
    include Display
    attr_reader :first_player, :second_player, :board, :current_player

    def initialize
        @board = Board.new
        @first_player = nil
        @second_player = nil
        @current_player = nil
    end

    def play
        game_set_up
        player_turns
    end

    def create_player
        puts display_role_prompt
        name = gets.chomp
        role = gets.chomp
        Player.new(name, role)
        puts display_role
    end

    def turn
        board.update_board(guess[0], gets.chomp.to_s)
        board.update_board(guess[1], gets.chomp.to_s)
        board.update_board(guess[2], gets.chomp.to_s)
        board.update_board(guess[3], gets.chomp.to_s)
    end

    def game_set_up
        puts display_intro
    end

    def player_turns
        until out_of_turns?
            turn
            break if guess_correct?
        end
    end

end