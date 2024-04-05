require './player'
require './game'


def random_number
  numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
  random_number = numbers[0 + rand(10)]
  return random_number
end

def wrong_answer(player1, player2)
  if player1.current_player == true
    player1.score -= 1
    puts "#{player1.name} has #{player1.score} remaining points"
  else
    player2.score -= 1
    puts "#{player2.name} has #{player2.score} remaining points"
    
  end
end

class Turn
  def new_turn (player1, player2)
    puts "---New Turn ---"
    if player1.current_player == true
      player1.current_player = false
      player2.current_player = true
    puts "It's #{player2.name}'s turn! #{player2.score}/3"
    puts "------"

    else
      player2.current_player = false 
      player1.current_player = true
    puts "It's #{player1.name}'s turn! #{player1.score}/3"
    puts "------"
    end
  end

  def equation(player1, player2, play)
    rand_num1 = random_number
    rand_num2 = random_number

    answer = rand_num1 + rand_num2
    print "What is #{rand_num1} plus #{rand_num2}? "
    if $stdin.gets.chomp.to_i != answer
      puts "💩"
      wrong_answer(player1, player2)
      play.game_loop(player1, player2, play)
    else
      puts "Good job 🍾"
      play.game_loop(player1, player2, play)
    end
  end
end