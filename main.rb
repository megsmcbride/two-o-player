require './Game'
require './Player'
require './Question'

question = Question.new
player1 = Player.new("player1")
player2 = Player.new("player2")
game = Game.new(player1, player2)

while player1.score > 0 && player2.score > 0

  puts question.generate_question(game.current_player)

  input = gets.chomp.to_i

  if input == question.answer
    puts " #{game.current_player} : Correct answer!"
  elsif
    game.lost(game.current_player)
    puts " #{game.current_player} : Incorrect answer - 1 "
  end

  puts " P1: #{player1.score}/3 vs P2: #{player2.score}/3"

  puts "---------- NEW TURN ----------"

  game.change_player

  if player1.score == 0 
    puts "Player 2 wins with a score of #{player2.score}/3"
    puts "---------- GAME OVER ----------"
    puts "Good bye!"
  elsif player2.score == 0
    puts "Player 1 wins with a score of #{player1.score}/3"
    puts "---------- GAME OVER ----------"
    puts "Good bye!"
  end

end