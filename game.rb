require './player'
require './turn'

class Game
  def initialize
    puts "Lets get started!"
  end

  def set_player_names
    print "Enter Player 1 Name: "
    player1_name = $stdin.gets.chomp

    if player1_name == ''
      player1_name = "Player 1"
    end

    

    print "Enter Player 2 Name: "
    player2_name = $stdin.gets.chomp

    if player2_name == ''
      player2_name = "Player 2"
    end
    return [player1_name, player2_name]
  end

  def game_loop(player1, player2, play)
    turn = Turn.new
    if player1.score == 0
      puts "#{player2.name} wins! 🍾"
    elsif player2.score == 0
      puts "#{player1.name} wins! 🍾"
    else
      turn.new_turn(player1, player2)
      turn.equation(player1, player2, play)
    end
  end
end
