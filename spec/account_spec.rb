require_relative '../lib/account'
require_relative '../lib/transactions'

describe Account do

  subject {described_class.new}

  it "has a client balance" do
    expect(subject.balance).to eq(1000)
  end

  it "receives a deposit request" do
    subject.deposit(200)
    expect(subject.balance).to be(1200)
  end

  it "receives a withdrawal request" do
    subject.withdrawal(200)
    expect(subject.balance).to be(800)
  end

  it "changes the account balance by amount of the transaction" do
  end

  it "adds the transaction to memory" do
  end
end

describe Transactions do

  it "stores user_id, date, credit, debit and balance" do
  end

  it "responds to messages from statement" do
  end
end
