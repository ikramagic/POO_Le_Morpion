require_relative 'board'
require_relative 'game'

class Player
    attr_accessor :name, :symbol
    @@all_players = []

    def initialize
        puts "Choisis un nom :"
        name = gets.chomp
        @name = name
        puts "Choisis un symbole (x ou o) :"
        symbol = gets.chomp
        @symbol =  symbol
        @@all_players << self
    end

    def self.all_players
        return @@all_players
    end
end