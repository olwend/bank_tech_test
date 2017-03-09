class Statement
  attr_reader :transactions, :body, :header

  def initialize
    @transactions = []
    @body = ''
    @header = "date       || credit || debit   || balance"
  end

  def build_transactions(transaction)
    @transactions << transaction
  end

  def print_statement
  prep_body
  @header + @body
  end

  def credit_or_debit(transaction)
    transaction.amount > 0 ? credit = transaction.amount : debit = transaction.amount.abs
  end

  def prep_body
    @transactions.each do |trans|
    trans.amount > 0 ? credit = trans.amount : debit = trans.amount.abs
    @body += "||#{trans.date}   ||" '%10s' % "#{credit}||" + '%11s' % " #{debit}||" + '%9s' % "#{trans.balance}\n"
    end
  end
end
