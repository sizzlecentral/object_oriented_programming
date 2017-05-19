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
    if @meal_time == 0
      "12am"
    elsif @meal_time == 12
      "12pm"
    elsif @meal_time <= 11
      "#{@meal_time}am"
    else
      "#{@meal_time - 12}pm"
    end
  end

  def meow
    "My name is #{name} and I eat #{preferred_food} at #{eats_at}."
  end


end

# ----- End of Cat class ----- #

marvin = Cat.new("Marvin", "Friskies", 7)
smoky = Cat.new("Smoky", "Fancy Feast", 12)

puts smoky.eats_at
puts marvin.eats_at
puts marvin.meow
puts smoky.meow
