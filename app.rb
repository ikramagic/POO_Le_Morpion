require 'bundler'
Bundler.require

require_relative 'lib/board'
require_relative 'lib/boardcase'
require_relative 'lib/player'
require_relative 'lib/game'

binding.pry

#arr = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

#while pour execution (jeu, et affichage)

#until (conditions de sortie)
#condition 1 = 3 symboles qui match (scenario ou l'un des joueurs gagne)
#sinon
#condition 2 = y a plus de place && y a pas condition 1 (qqun gagne) 
#board = BoardCase.new

#board.display_board

#board.play_now

#board.display_board

#board.play_now

#board.display_board

=begin

puts "Début du jeu : "

player1 = Player.new
player2 = Player.new

play_board = Board.new

play_game = Game.new

play_board.display_board

=end