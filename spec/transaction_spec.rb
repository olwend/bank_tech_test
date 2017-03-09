require './lib/transaction'

describe Transaction do

  subject (:transaction) { described_class.new(-100,900)}

it "adds the transaction to memory" do
  expect(transaction.amount).to eq(-100)
  expect(transaction.date).to eq(Time.now.strftime("%d/%m/%Y"))
  expect(transaction.balance).to eq(900)
end


it "responds to messages from statement" do
end
end
