class Game
  attr_accessor :board_display, :game_over, :current_player, :players, :win_condition

  def initialize(players)
    @players = players
    @board_display = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @game_over = false
    @current_player = 0
    @players_moves = Hash.new
  end

  def switch_player
    if @current_player == 1
      @current_player = 0
    else @current_player = 1     end
  end

  def change_board(select_number)
    board_flatten = @board_display.flatten
    board_flatten[select_number - 1] = @players[@current_player][:token]
    @board_display = board_flatten.each_slice(3).to_a
    switch_player
  end

  def position_validation?(number)
    board_flatten = @board_display.flatten
    if board_flatten.any?(number) && number.between?(0, 10)
      true
    else
      false
    end
  end

  def game_over_conditions(player_moves, player_name)
    win_condition = [[1, 2, 3], [2, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7], [1, 4, 7], [2, 5, 8], [3, 6, 9]]

      win_condition.each do
        |n|
        if player_moves.sort.include?(n.sort)
          puts "#{player_name} wins!!!! "
          @game_over = true
          break
        end
      end

  end
end
