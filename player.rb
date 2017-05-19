# Excercise 3 / Player
#---------------------

class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def gold_coins
    @gold_coins
  end

  def health_points
    @health_points
  end

  def lives
    @lives
  end

  def level_up
    @level_up = @lives += 1
  end

  def collect_treasure
    @collect_treasure = @gold_coins += 1
  end



end

# ----- End of Player class ----- #

player1 = Player.new
player1.level_up
puts player1.lives
puts player1.collect_treasure
