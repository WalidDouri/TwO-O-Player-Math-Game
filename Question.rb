class Question

  def initialize
    @number_1 = rand(1...10)
    @number_2 = rand(1...10)
    
  end


  def print_question
    puts "what does #{@number_1} plus #{@number_2} equal?"
  end

  def is_correct?(answer)
    if answer == @number_1 + @number_2
      puts "YES! You are correct."
      true
    else 
      puts "Seriously? No!"
       false
    end
  end

end