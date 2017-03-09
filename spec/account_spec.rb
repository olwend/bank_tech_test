require_relative '../lib/account'
require_relative '../lib/transaction'

describe Account do

  subject {described_class.new}

  it "has a client balance" do
    expect(subject.balance).to eq(1000)
  end

  it "raises balance on deposit" do
    subject.deposit(200)
    expect(subject.balance).to be(1200)
  end

  it "raises balance on withdrawal" do
    subject.withdrawal(200)
    expect(subject.balance).to be(800)
  end
end
