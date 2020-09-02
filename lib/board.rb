class Board
  attr_accessor :@board_display
  def initialize
    @board_display = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end


  def game
    5.times do
    def player1
      change_board("X","player1")
    end
    def player2
      change_board("O","player2")
    end
    player1
    player2
  end
  end


  def position_validation?(number)
    board_flatten = $board_display.flatten 
    if board_flatten.any?(number) 
    else   
      p "Invalid position"
      get_player_move
    end 
  end  
end
