require './player'
require './turn'
require './game'

@play= Game.new

player_arr = @play.set_player_names

@player1 = Player.new(player_arr[0])
@player2 = Player.new(player_arr[1])

puts "#{@player1.name} VS #{@player2.name}"

@play.game_loop(@player1, @player2, @play)