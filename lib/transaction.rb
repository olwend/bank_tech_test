class Transaction
  attr_reader :date, :amount, :balance

  def initialize(date = Time.now, amount, balance)
    @date = date.strftime("%d/%m/%Y")
    @amount = amount
    @balance = balance
  end
end
