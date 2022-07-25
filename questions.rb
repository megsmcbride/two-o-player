class Question

  attr_reader :answer

  def generate_question(player)
    num = Random.new
    num1 = num.rand(1..20)
    num2 = num.rand(1..20)
    @answer = num1 + num2
    puts " #{player} : What does #{num1} + #{num2} = ?"
  end 

end