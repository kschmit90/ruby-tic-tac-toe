class Player
  
  attr_reader :name, :marker, :spot
  
  def initialize(name, marker)
    @name = name
    @marker = marker
  end

  def pick_spot()
    puts "Enter a number(0-8) on the key to place your marker."
    @spot = gets.chomp.to_i
  end
  
  def valid_input?
    if @spot.between?(0, 8)
      return true
    else
      return false
    end
  end
end


