# Excercise 2 / The Cat's Meow
#-----------------------------

class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def name
    @name
  end

  def preferred_food
    @preferred_food
  end

  def meal_time
    @meal_time
  end

  def eats_at
    @eats_at
    if @meal_time == 0
      return "12am"
    elsif @meal_time == 12
      return "12pm"
    elsif @meal_time <= 11
      return "#{@meal_time}am"
    else
      return "#{@meal_time - 12}pm"
    end
  end

end

# ----- End of Cat class ----- #

marvin = Cat.new("Marvin", "Friskies", 7)
smoky = Cat.new("Smoky", "Fancy Feast", 12)

puts smoky.eats_at
