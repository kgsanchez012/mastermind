class Player
    attr_reader :name, :role

    def initialize(name, role)
        @name = name
        @role = role
    end
end

class Human < Player
    #
end

class Computer < Player
    #
end