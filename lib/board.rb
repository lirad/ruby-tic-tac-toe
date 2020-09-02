class Board
  attr_accessor :board_display, :game_over

  def initialize(players)
    @players = players
    @board_display = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @game_over = false
  end

  def change_board(select_number)
    board_flatten = @board_display.flatten
    board_flatten[select_number - 1] = @players[0][:token]
    @board_display = board_flatten.each_slice(3).to_a
    @board_display.each { |n| p n }
  end

  def position_validation?(number)
    board_flatten = @board_display.flatten
    if board_flatten.any?(number)
      true
    else
      p "Invalid position"
    end
  end

  def game(select_number)
    5.times do
      def player1
        change_board(select_number)
      end

      def player2
        change_board(select_number)
      end
      player1
      player2
    end
  end

end
