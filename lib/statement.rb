class Statement
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def build_transactions(transaction)
    @transactions << transaction
  end

  def print_statement
  end
end
