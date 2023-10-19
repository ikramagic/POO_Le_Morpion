require_relative 'player'
require_relative 'game'

class Board
    attr_accessor :board

    def initialize
      @board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
    end

    def display_board
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts "------------"
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts "------------"
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]}"
    end

    def play_turn(player) #now works and displays correct symbol in correct index
        puts "#{player.name}: où veux-tu aller ?"
        puts ">>>" 
        choice = gets.chomp.to_i
        if choice > 8 
          puts "Nope, les cases vont de 0 à 8."
        else
        @board[choice] = player.symbol
        end
    end

    def victory?(player)

      winning_combinations = [
        [0, 1, 2], [3, 4, 5], [6, 7, 8],
        [0, 3, 6], [1, 4, 7], [2, 5, 8],
        [0, 4, 8], [2, 4, 6]            
      ]
      
      winning_combinations.each do |you_win| #on va boucler sur chacune des sous-boites de winning_comb qui deviennent combo
        if you_win.all? { |position| @board[position] == player.symbol }
        #{} commence par vérifier les sous-cases = elle contiennent le symbole ?
        #all? permets scanner si TOUTES les cases correspondent bien à ce qui a été vérifié dans {}
          puts "Bravo #{player.name}, tu as gagné!"
          return true
          break
        end
        if @board.all? { |board_box| board_box != nil && board_box != true } 
        #boites pas vides et remplissage effectué ? vérifie toutes les cases de @board et si c'est le cas, affiche moi le message ci-dessous
        puts "Egalité, personne ne gagne."
        break
          return false
        end
        return false
      end
    end

    def show_board
      puts " 0 | 1 | 2 "
      puts "------------"
      puts " 3 | 4 | 5 "
      puts "------------"
      puts " 6 | 7 | 8 "
    end
end