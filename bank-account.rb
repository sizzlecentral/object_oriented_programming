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
    @amount = amount
    @balance += @amount
  end




end

# --- End of BankAccount class --- #

chequing = BankAccount.new(0, 5)
chequing.deposit(20)
puts chequing.balance
