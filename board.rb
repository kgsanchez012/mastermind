class Board
    attr_accessor :code, :guess, :hint, :turns

    def initialize
        @code = ["", "", "", ""]
        @guess = ["", "", "", ""]
        @hint = ["", "", "", ""]
        @turns = 12
    end

    def set_code(slot, color)
        @code[slot] = color
    end

    def update_board(slot, color)
        @guess[slot] = color
    end

    def valid_move?(color)
        if not code.include?(color)
        end
    end

    def out_of_turns?
        return true if turns == 0
    end

    def guess_correct?
        return true if guess == code
    end
end