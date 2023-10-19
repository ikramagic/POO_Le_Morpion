require_relative 'player'
require_relative 'game'

class Board
    attr_accessor :board

    def initialize
      @board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
    end

    def display_board
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts "---------"
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts "---------"
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]}"
    end

    def play_turn(player) #now works and displays correct symbol in correct index
        puts "#{player.name}: où veux-tu aller ?"
        puts ">>>" 
        choice = gets.chomp.to_i
        @board[choice] = player.symbol
    end
end