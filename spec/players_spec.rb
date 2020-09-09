require './lib/players.rb'

describe Players do
  let(:token_array) { %w[x X o O] }
  describe '#validate_token?' do
    it 'Check if X or O are valid' do
      token_array.each do |n|
        expect(Players.validate_token?(n)).to eql(true)
      end
    end

    it 'Check if any other char is invalid' do
      chars = (0..9).to_a + ('A'..'z').to_a + ('!'..'?').to_a
      chars.each do |n|
        expect(Players.validate_token?(n)).to eql(false) if !token_array.any?(n) && !n.nil?
      end
    end
  end
end
