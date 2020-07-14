# frozen_string_literal: true

require 'account'

describe Account do
  subject(:account) { Account.new }

  it 'creates a new Account' do
    expect(account).to be_instance_of Account
  end

  it 'initializes with a balance' do
    expect(account.balance).to eq 0
  end

  it 'initializes with a empty transactions array' do
    expect(account.transactions).to eq []
  end

  it 'allows a user to deposit funds' do
    account.deposit(1000)
    expect(account.balance).to eq 1000
  end

  it 'allows a user to withdraw funds' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.balance).to eq 500
  end

  xit 'stores user deposit into transaction array' do
    account.deposit(1000)
    expect(account.transactions).to eq [1000]
  end

  it 'stores user withdrawel into transaction array' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.transactions.last).to eq -500
  end

  it 'raises error if withdraw is greater than balance' do
    account.deposit(1000)
    expect { account.withdraw(1001) }.to raise_error('Insufficient Funds')
  end

  it 'stores user deposit into transaction array' do
    account.deposit(100)
    expect(account.transactions.first).to be_an_instance_of Transaction
  end

  it 'stores each transaction in transactions array' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.transactions.length).to eq 2
  end
end
