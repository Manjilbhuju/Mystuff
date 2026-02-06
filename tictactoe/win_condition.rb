module WinCondition
  def self.check_win(board, size, current_player)
    # Check rows
    board.each do |row|
      return true if row.all? { |cell| cell == current_player }
    end
    
    # Check columns
    (0...size).each do |col|
      return true if board.all? { |row| row[col] == current_player }
    end
    
    # Check diagonals
    return true if (0...size).all? { |i| board[i][i] == current_player }
    return true if (0...size).all? { |i| board[i][size-1-i] == current_player }
    
    false
  end

  def self.board_full?(board)
    board.each do |row|
      row.each do |element|
        return false if element != "X" && element != "O"
      end
    end
    true
  end
  
end