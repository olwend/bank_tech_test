require_relative '../lib/statement'
describe Statement do

  subject (:statement) { described_class.new }

  before(:each) do
  transaction1 = Transaction.new(200,600)
  subject.build_transactions(transaction1)
  transaction2 = Transaction.new(-300,0)
  subject.build_transactions(transaction2)
  end

  it "holds transactions details in a hash" do
    expect(subject.transactions.size).to eq (2)
  end

  it "has a header" do
    expect(subject.header).to be
  end

  it "transforms transaction into credit or debit" do
    transaction1 = Transaction.new(200,600)
    expect(subject.credit_or_debit(transaction1)).to eq(200)
    transaction1 = Transaction.new(-300,600)
    expect(subject.credit_or_debit(transaction1)).to eq(300)
  end

  it "lists transactions most recent first" do
  end
end
