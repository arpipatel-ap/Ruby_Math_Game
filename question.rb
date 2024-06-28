class Question
  attr_reader :number1, :number2

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def generate_question
    "What is #{@number1} + #{@number2}?"
  end

  def correct_answer
    @number1 + @number2
  end

  def check_answer(answer)
    answer.to_i == correct_answer
  end
end
