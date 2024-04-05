class Player
  attr_accessor :score, :current_player, :name

  def initialize(name)
    @name = name
    @score = 3
    @current_player = false
  end
end