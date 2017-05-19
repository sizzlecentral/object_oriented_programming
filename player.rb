# Excercise 3 / Player
#---------------------

class Player

  attr_accessor :gold_coins, :health_points, :lives, :level_up, :collect_treasure, :do_battle

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def gold_coins
    if @lives == 0
      restart
    # else
      # @gold_coins
    end
  end

  def health_points
    if lives == 0
      restart
    elsif @health_points < 1
      @lives -= 1
      @health_points = 10
    else
      @health_points
    end
  end

  def lives
    if @lives == 0
      restart
    else
      @lives
    end
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

  def do_battle(damage)
    @health_points -= damage
  end

  def restart
    @lives = 5
    @health_points = 10
    @gold_coins = 0
  end

end

# ----- End of Player class ----- #

player1 = Player.new
# player1.level_up
# puts player1.lives

# player1.collect_treasure
# puts player1.gold_coins

# player1.gold_coins = 10
# player1.collect_treasure
# puts player1.gold_coins
# puts player1.lives

# player1.do_battle(4)
# puts player1.health_points

# player1.health_points = 0
# puts player1.health_points
# puts player1.lives

# player1.gold_coins = 12
# player1.health_points = 5
# player1.lives = 0
#
# puts player1.gold_coins
# puts player1.health_points
# puts player1.lives
