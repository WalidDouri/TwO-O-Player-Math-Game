class Player
  attr_reader :name

  def initialize(name)
  @name = name
  @lives = 3
  end

  def lost_lives
  @lives -= 1
  end

  def print_lives
    return "#{@name}: #{@lives}/3"
  end

  def still_alive?
    return @lives > 0 
  end

end
