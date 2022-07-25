require './Game'
require './Player'
require './Question'

question = Question.new
player1 = Player.new("player1")
player2 = Player.new("player2")
game = Game.new(player1, player2)

