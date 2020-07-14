# frozen_string_literal: true

require 'transaction'

describe Transaction do
  subject(:transaction) { Transaction.new }

  it 'creates a new Transaction' do
    expect(transaction).to be_instance_of Transaction
  end

  it 'initializes with a balance' do
    transaction = Transaction.new(balance: 100)
    expect(transaction.balance).to eq 100
  end

  it 'initializes with a credit' do
    transaction = Transaction.new(balance: 100, credit: 200)
    expect(transaction.credit).to eq 200
  end
end
