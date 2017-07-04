class BankAccount
  @@interest_rate = [0.06]
  @@accounts = []

attr_reader :balance
attr_writer :balance

  def initialize
    @balance = 0
  end

  def deposit (deposit_amount)
    @balance += deposit_amount
  end

  def withdraw (withdraw_amount)
    @balance -= withdraw_amount
  end

end

def self.create
  @@accounts << BankAccount.new
  return @@accounts.last
  end


def self.total_funds
  total = 0
  @@accounts.each do |account|
    total += account.balance
  end
  return total
end

def self.interest_time
  @@acounts.each do |a|
    a.balance = @@acounts *= (interest_time + 1)
    end
    return a.balance
  end


my_bankaccount = BankAccount.new
# my_bankaccount.deposit (200)
# my_bankaccount.withdraw (50)

puts my_bankaccount.deposit (200)
puts my_bankaccount.withdraw(20)

# my_account = BankAccount.create
# your_account = BankAccount.create
# puts my_account.balance # 0
# puts BankAccount.total_funds # 0
# my_account.deposit(200)
# your_account.deposit(1000)
# puts my_account.balance # 200
# puts your_account.balance # 1000
# puts BankAccount.total_funds # 1200
# BankAccount.interest_time
# puts my_account.balance # 202.0
# puts your_account.balance # 1010.0
# puts BankAccount.total_funds # 1212.0
# my_account.withdraw(50)
# puts my_account.balance # 152.0
# puts BankAccount.total_funds # 1162.0
