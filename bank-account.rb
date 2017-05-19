# Excercise 1 / Bank Account
#---------------------------

class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def balance
    @balance
  end

  def interest_rate
    @interest_rate
  end

  def deposit(amount)
    @deposit = amount
    @balance += @deposit
  end

  def withdraw(amount)
    @withdraw = amount
    @balance -= @withdraw
  end

  def gain_interest
    @gain_interest = @balance * (@interest_rate * 0.01)
    puts "Annual interest on your current balance would be $#{@gain_interest}."
  end
end

# --- End of BankAccount class --- #

chequing = BankAccount.new(0, 5)
chequing.deposit(110)
chequing.withdraw(10)
puts chequing.gain_interest
