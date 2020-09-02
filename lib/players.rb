class Players
  @@token_array = %w[x X o O]
  attr_reader :name
  attr_reader :token

  def initialize(name, token)
    @name = name
    @token = token
  end

  def self.validate_token?(token = nil)
    if @@token_array.any?(token)
      true
    else
      false
    end
  end

  def display
    puts "#{@name} and #{@token}"
  end
end
