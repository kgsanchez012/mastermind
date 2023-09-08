require_relative 'display'

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
    Board.new
    create_player
    generate_code
    puts board.code
    puts display_decoder_start
    player_turns
  end

  def create_player
    puts display_role_prompt
    name = gets.chomp
    role = gets.chomp
    Player.new(name, role)
    puts display_role(role)
  end

  def generate_code
    4.times do |slot|
      board.set_code(slot, ["R", "O", "Y", "G", "B", "V"].sample)
    end
  end
  
  def turn
    4.times do |slot|
      board.update_board(slot, gets.chomp.to_s)
    end
  end

  def game_set_up
    puts display_intro
  end

  def player_turns
    until board.out_of_turns?
      turn
      board.turns -= 1
      puts display_feedback(board.guess, board.hint, board.turns)
      puts board.code
      puts board.guess
      break if board.guess_correct?
    end
  end
end
