require_relative '../lib/statement'
describe Statement do

  subject (:statement) { described_class.new }

  before(:each) do
  transaction3 = Transaction.new(1000,1000)
  subject.build_transactions(transaction3)
  transaction4 = Transaction.new(2000,3000)
  subject.build_transactions(transaction4)
  transaction5 = Transaction.new(-500,2500)
  subject.build_transactions(transaction5)
  end

  it "holds transactions details in a hash" do
    expect(subject.transactions.size).to eq (3)
  end

  it "has a header" do
    expect(subject.header).to be
  end

  it "transforms transaction into credit or debit" do
    transaction1 = Transaction.new(1000,1000)
    expect(subject.credit_or_debit(transaction1)).to eq(1000)
    transaction2 = Transaction.new(2000,3000)
    expect(subject.credit_or_debit(transaction2)).to eq(2000)
    transaction3 = Transaction.new(-500,2500)
    expect(subject.credit_or_debit(transaction3)).to eq(500)
  end

  it "lists transactions most recent first - visual check" do
    p subject.print_statement
  end
end
