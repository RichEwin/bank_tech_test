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

  it 'initializes with a debit' do
    transaction = Transaction.new(balance: 100, credit: 200, debit: 300)
    expect(transaction.debit).to eq 300
  end

  it 'initializes with a date' do
    transaction = Transaction.new(balance: 100, credit: 200, debit: 300, date: Time.now.strftime('%d/%m/%Y'))
    expect(transaction.date).to eq Time.now.strftime('%d/%m/%Y')
  end

  it 'displays a transaction with funds being displayed correctly' do
    transaction = Transaction.new(date: Time.now.strftime('%d/%m/%Y'), credit: 200, debit: 300, balance: 300)
    expect(transaction.display).to eq "#{Time.now.strftime('%d/%m/%Y')} || 200.00 || 300.00 || 300.00"
  end
end
