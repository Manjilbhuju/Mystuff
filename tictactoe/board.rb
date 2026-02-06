require_relative 'player'
require_relative 'win_condition'

module BoardModule
  class Board

    def initialize
      loop do
        print "Enter a size of a board: "
        @size = gets.chomp.to_i
        if @size < 3
          puts "Board size must be at least 3"
        else
          break
        end
      end
      @board = Array.new(@size){Array.new(@size, " ")}
      @playerobj = PlayerModule::Player.new
    end

    def print_board()
      puts "-" * (@size * 4 - 3)
      @board.each do |row|
        puts row.join(" | ")
        puts "-" * (@size * 4 - 3)
      end
    end

    def fill_board()
      move = @playerobj.player_move(@size, @board)
      return false if move.nil?
      
      row, col = move
      @board[row][col] = @playerobj.current_player
      print_board

      if win_condn()
        puts "Player #{@playerobj.current_player} wins!"
        return true
      end

      if full_board?
        puts "It's a draw!"
        return true
      end

      @playerobj.change_turn
      return false
    end

    def play_game()
      print_board
      loop do
        game_over = fill_board()
        break if game_over
      end
    end

    def full_board?
      WinCondition.board_full?(@board)
    end

    def win_condn()
      WinCondition.check_win(@board, @size, @playerobj.current_player)
    end

  end
end