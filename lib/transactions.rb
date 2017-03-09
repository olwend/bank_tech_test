class Transactions
  attr_reader :date, :credit, :debit, :balance

  def initialize
    @date = hash[:date]
    @credit = hash[:credit]
    @debit = hash[:debit]
    @balance = hash[:balance]
  end
end
