require "./lib/game.rb"

describe Game do
  let(:players) { [{ name: "Mahmoud", token: "X" }, { name: "Diego", token: "O" }] }
  let(:game) { Game.new(players) }
  let(:mutated_board) { [1, "X", 3, 4, 5, 6, 7, 8, 9] }
  let(:valid_positions) { (1..9) }
  let(:game_moves_win) { [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7], [1, 4, 7], [2, 5, 8], [3, 6, 9]] }
  let(:game_moves_draw) { [2,3,4,8,9] }

  describe "#switch_player" do
    it "Mutates the current_player when called" do
      if game.current_player == 0
        expect(game.switch_player).to eql(1)
      end
    end
  end

  describe "#change_board" do
    it "Mutates de board if players select a position" do
      expect(game.change_board(2)).to eql(mutated_board.each_slice(3).to_a)
    end
  end

  describe "#position_validation?" do
    it "Checks if a position selected by a player is taken or not" do
      game.change_board(2)
      expect(game.position_validation?(2)).to eql(false)
    end

    it "Checks if a valid number position is inputed" do
      chars = (0..9).to_a + ("A".."z").to_a + ("!".."?").to_a
      chars.each do |n|
        expect(game.position_validation?(n)).to eql(false) if !valid_positions.any?(n) && !n.nil?
      end
    end
  end

  describe "#game_over_conditions" do
    it "checks game for a win" do
      game_moves_win.each do |n|
        expect(game.game_over_conditions(n)).to eql("win")
      end
    end
    it "checks a game for a draw" do
      expect(game.game_over_conditions(game_moves_draw)).to eql('draw')
    end
  end
end
