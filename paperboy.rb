# Excercise 4 / Paperboy
#-----------------------

class Paperboy

  attr_accessor :name, :quota, :deliver, :report
  attr_reader :earnings

  def initialize(name)
    @name = name
    @quota = 50
  end

  def name
    @name
  end

  def quota
    @quota
  end

  def deliver(start_address, end_address)
    @deliver = (end_address - start_address + 1)
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

  def report
    @report
  end


end

# ----- End of Paperboy class ----- #

tommy = Paperboy.new("Tommy")
tommy.deliver(101, 120)
puts tommy.earnings
