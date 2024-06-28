require "./player"
require "./question"


class Game
  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @current_player = @player1
    @game_over = false
  end

  def start
    puts "----- Welcome to the Math Game! -----"
    while !@game_over
      turn
    end
    display_winner
  end

  def turn
    question = Question.new
    puts "\n#{@current_player.name}: #{question.generate_question}"
    print "> "
    answer = gets.chomp

    if question.check_answer(answer)
      @current_player.increase_score(1)
      puts "YES! You are correct. #{@player1.score} : #{@player2. score}"
    else
      @current_player.lose_life
      puts "Seriously? No!#{@current_player.name} loses a life."
    end


    if @current_player.lives == 0
      @game_over = true
        puts '----- GAME OVER -----'
      
    else
      @current_player = (@current_player == @player1) ? @player2 : @player1
    end
  end

  def display_winner
    winner = @player1.lives > 0 ? @player1 : @player2
    puts "----- Game over! -----"
    puts "#{winner.name} wins with a score of #{winner.score}!"
  end
end
