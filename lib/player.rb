class Player
    attr_reader :token, :name
    def initialize(player_name, token_taken)
      @token_array = ['x', 'X', 'o', 'O']
      @token = nil
      @token_taken = token_taken
      @player_name = player_name
      @name = nil
    end
    def get_name
      puts "hey #{@player_name}, what's your name?"
      @name = gets.chomp.to_s.capitalize
      puts "Hello #{@name}, please choose a token (x, o). "
    end
    def check_token
      if  !@token_array.any?(@token_taken)
              get_token
      elsif @token_taken != nil
        ["x", "X"].any?(@token_taken) ? @token = "O" : @token = "X" 
          puts "Hello #{@name}, your token is #{@token}"
      end
    end
    def get_token
      @token = gets.chomp
      validate_token
    end
    def validate_token
      correct = false
      unless correct == true
      if @token_array.any?(@token)
          @token = @token.capitalize
          p "your token is #{@token} ."
          correct = true
      else   
          p "Invalid token, please choose X or O"
          get_token
      end
      end
    end  
  
    def execute
      get_name
      check_token
    end
  end