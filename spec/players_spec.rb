require './lib/players.rb'

describe Players do
  describe "#validate_token?" do

    it "Check if X or O are valid" do
      %w[X x o O].each do |n|
        expect(Players.validate_token?(n)).to eql(true)  
      end  
    end

    it "Check if any other char is invalid" do
      chars = (0..9).to_a + ('A'..'z').to_a + ('!'..'?').to_a
      chars.each do |n|
        if !%w[X x O o].any?(n) && !n.nil?
          expect(Players.validate_token?(n)).to eql(false)
        end
      end
    end
  end
  
end