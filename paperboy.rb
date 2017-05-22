# Excercise 4 / Paperboy
#-----------------------

class Paperboy

  attr_accessor :name, :quota, :deliver, :report
  attr_reader :earnings

  def initialize(name)
    @name = name
    @quota = 50
    @experience = 0
    @experience_earnings = 0
  end

  def name
    @name
  end

  def deliver(start_address, end_address)
    @deliver = (end_address - start_address + 1)
  end

  def experience
    @experience += @deliver
  end

  def quota
    if @deliver > @quota
      @quota += (@deliver * 0.5)
    else
      @quota
    end
  end

  def earnings
    if @deliver > @quota
      @earnings = (@quota * 0.25) + ((@deliver - @quota) * 0.5)
    elsif @deliver < @quota
      @earnings = (@deliver * 0.25) - 2
    else
      @earnings = @deliver * 0.25
    end
  end

  def experience_earnings
    @experience_earnings += earnings
  end

  def report
    @report = "I'm #{@name}, I've delivered #{experience} papers and I've earned $#{experience_earnings} so far!"
  end

end

# ----- End of Paperboy class ----- #

tommy = Paperboy.new("Tommy")

tommy.deliver(101, 160)
puts tommy.report

tommy.quota

tommy.deliver(1, 75)
puts tommy.report
