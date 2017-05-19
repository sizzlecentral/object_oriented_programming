# Excercise 3 / Player
#---------------------

class Player

  attr_accessor :gold_coins, :health_points, :lives, :level_up, :collect_treasure

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
    if @gold_coins % 10 == 0
      level_up
    else
      @collect_treasure = @gold_coins += 1
    end
  end



end

# ----- End of Player class ----- #

player1 = Player.new
# player1.level_up
# puts player1.lives

# player1.collect_treasure
# puts player1.gold_coins

player1.gold_coins = 10
player1.collect_treasure
puts player1.gold_coins
puts player1.lives
