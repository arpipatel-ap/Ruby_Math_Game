require './game'

puts "Welcome to Ruby Math Game! This game requires two players."
puts "Enter Player 1's name:"
player1_name = gets.chomp

puts "Enter Player 2's name:"
player2_name = gets.chomp


game = Game.new(player1_name, player2_name)


game.start
