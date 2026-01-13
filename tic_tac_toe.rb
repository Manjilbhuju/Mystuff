class TicTacToe

  def initialize
    @board = [
      ["0", "1", "2"],
      ["3", "4", "5"],
      ["6", "7", "8"]
    ]
    @player = ["X","O"].sample
  end

  def print_board()
    @board.each_with_index do |row, index|
      puts "| #{row[0]} | #{row[1]} | #{row[2]} |"
      puts"-------------"
    end
  end

  def player_move()
    puts "It's Player #{@player}'s turn. Please select an option"
    input = gets.chomp.to_i
    
    if input < 0 || input > 8
      puts "Invalid move"
      return
    end

    row = input / 3
    col = input % 3

    if @board[row][col] != "X" && @board[row][col] != "O"
      @board[row][col] = @player
      print_board

      if win_condn()
        puts "Player #{@player} wins!"
        exit
      end

      change_turn
    else
      puts "Invalid move or Place already taken"
    end
  end

  def change_turn()
    if @player == "X"
      @player = "O"
    else
      @player = "X"
    end
  end

  def full_board?
    @board.each do |row|
      row.each do |element|
        return false if element != "X" && element != "O"
      end
    end
  end

  def win_condn()
    if (
      @board[0][0] == @board[0][1] && @board[0][1] == @board[0][2] && @board[0][0] != "" ||
      @board[1][0] == @board[1][1] && @board[1][1] == @board[1][2] && @board[1][0] != "" ||
      @board[2][0] == @board[2][1] && @board[2][1] == @board[2][2] && @board[2][0] != "" ||

      @board[0][0] == @board[1][0] && @board[1][0] == @board[2][0] && @board[0][0] != "" ||
      @board[0][1] == @board[1][1] && @board[1][1] == @board[2][1] && @board[0][1] != "" ||
      @board[0][2] == @board[1][2] && @board[1][2] == @board[2][2] && @board[0][2] != "" ||

      @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] && @board[0][0] != "" ||
      @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] && @board[0][2] != ""
    )
      return true
    else
      return false
    end
  end

  def play_game
    print_board()
    until full_board?
      player_move()
    end
  end

end

obj = TicTacToe.new
obj.play_game