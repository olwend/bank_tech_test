require './lib/statement'
require './lib/transaction'

class Account
  attr_reader :balance

  def initialize
    @balance = 1000

  end

  def withdrawal(amount)
    update(-amount)

  end

  def deposit(amount)
    update(amount)
  end

  private

  def update(amount)
    @balance += amount
  end

  def add_trans_to_array
  end
end
