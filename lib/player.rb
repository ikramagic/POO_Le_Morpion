require_relative 'board'
require_relative 'game'

class Player
    attr_accessor :name, :symbol

    def initialize
        puts "Choisis un nom :"
        name = gets.chomp
        @name = name
        puts "Choisis un symbole (x ou o) :"
        symbol = gets.chomp
        @symbol =  symbol
    end
end