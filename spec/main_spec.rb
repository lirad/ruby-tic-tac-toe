require_relative('../lib/players.rb')
require_relative('../lib/game.rb')
describe Players do
  describe '#validate_token?' do
    it 'checks if the entered token is valid' do
      expect(Players.validate_token?('x')).to eql(true)
    end
  end
end

describe Game do
  let(:players) { [{ name: 'Mahmoud', token: 'X' }, { name: 'Diego', token: 'O' }] }
  let(:game) { Game.new(players) }
  describe '#switch_player' do
    it 'switch the players turns' do
      expect(game.switch_player).to eql(1)
    end
  end
  describe '#change_board' do
    it 'mutates the board' do
      expect(game.change_board(1)).to eql([['X', 2, 3], [4, 5, 6], [7, 8, 9]])
    end
  end
  describe '#position_validation?' do
    it 'validates the chosen position' do
      expect(game.position_validation?(1)).to eql(true)
    end
  end
  describe '#game_over_conditions' do
    it 'checks if the game is over' do
      expect(game.game_over_conditions([1, 2, 3])).to eql('win')
    end
  end
end
