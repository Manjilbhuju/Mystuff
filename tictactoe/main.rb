require_relative 'board'

module Main
  class Game

    def initialize
      @board = BoardModule::Board.new
    end

    def start
      @board.play_game
    end
    
  end
end

game = Main::Game.new
game.start