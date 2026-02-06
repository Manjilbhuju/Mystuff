module PlayerModule
  class Player

    attr_reader :player

    def initialize
      @player = ["X","O"].sample
    end

    def current_player
      @player
    end

    def player_move(size, board)
      puts "It's Player #{@player}'s turn. Please select an option (1-#{size*size}):"
      input = gets.chomp.to_i
      
      if input < 1 || input > size * size
        puts "Invalid move - please enter a number between 1 and #{size*size}"
        return nil
      end

      row = (input - 1) / size
      col = (input - 1) % size

      if board[row][col] != " "
        puts "Invalid move - position already taken"
        return nil
      end

      return [row, col]
    end

    def change_turn()
      if @player == "X"
        @player = "O"
      else
        @player = "X"
      end
    end
    
  end
end