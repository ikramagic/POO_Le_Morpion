require_relative 'lib/board'
require_relative 'lib/boardcase'
require_relative 'lib/player'
require_relative 'lib/game'

class Application 

    def perform
        puts "Bienvenue dans mon POO morpion :"

        new_game = Game.new
        interface = Board.new

        puts "Voici les valeurs de chaque case. Tu dois saisir le chiffre qui correspond pour effectuer ton placement."

        interface.show_board

        loop do 
        new_game.turn
        interface.show_board
        new_game.new_round
        end
    end
end

Application.new.perform