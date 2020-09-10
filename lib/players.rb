class Players
  attr_reader :name, :token, :token_array
  attr_accessor :player_moves

  @token_array = %w[x X o O]

  def initialize(name, token)
    @name = name
    @token = token
    @player_moves = []
  end

  def self.validate_token?(token = nil)
    if @token_array.any?(token)
      true
    else
      false
    end
  end
end
