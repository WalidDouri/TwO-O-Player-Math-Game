class Game

  def initialize 
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
  end

  def print_states
    puts "#{@player_1.print_lives} vs #{@player_2.print_lives}"
  end


  def play
    current = @player_1
    other = @player_2
    while @player_1.still_alive? && @player_2.still_alive? 
      puts '---NEW-TURN---'
      puts "#{current.name}'s turn"
      question = Question.new();
      question.print_question
      answers = gets.chomp.to_i
      if !question.is_correct?(answers)
      current.lost_lives
      end
      temp = current
      current = other
      other = temp
      print_states
    end
      puts '---GAME-OVER---'
      puts 'Good bye!'
    end

end