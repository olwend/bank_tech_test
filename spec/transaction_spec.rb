require './lib/transaction'

describe Transaction do

  subject (:transaction) { described_class.new(-100,900)}

  it "adds the transaction to memory" do
    expect(transaction.amount).to eq(-100)
    expect(transaction.date).to eq(Time.now.strftime("%d/%m/%Y"))
    expect(transaction.balance).to eq(900)
  end

  it "can be accessed from statement" do
    statement = Statement.new
    statement.build_transactions(:transaction)
    expect(statement.transactions.count).to eq(1)

  end
end
