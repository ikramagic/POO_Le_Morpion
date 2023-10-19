require_relative 'board'
require_relative 'boardcase'
require_relative 'player'

class Game 
    attr_accessor :player1, :player2, :status, :current_board

    def initialize
        #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
        @player1 = Player.new
        @player2 = Player.new
        @current_board = Board.new
        @status = "on going"
    end

    def turn
        puts "Rien ne va plus, faîtes vos jeux :"
        while true #ça va tourner jusqu'à...
            @current_board.display_board #affiche la grille
            if @current_board.play_turn(player1) #joue le tour du joueur 1
              break if @current_board.victory?(player1) #arrête le while si joueur 1 gagne ou égalité
            end
        
            @current_board.display_board #affiche la grille
            if @current_board.play_turn(player2) #joue le tour du joueur 2
              break if @current_board.victory?(player2) ##arrête le while si joueur 2 gagne ou égalité
            end
        end
    end

    def new_round
        puts "Veux-tu continuer à jouer ? (oui/non)"
        puts ">>>"
        continue = gets.chomp
        if continue == "oui"
        puts "C'est reparti!"
        current_board = Board.new
        turn
        elsif continue =="non"
        puts "Rageux. Allez, bye."
        end
    end

    def game_end
        # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
        if @current_board.victory?(player2) == true|| @current_board.victory?(player1) == true
            puts "Fin de la partie."
        end
      end
end