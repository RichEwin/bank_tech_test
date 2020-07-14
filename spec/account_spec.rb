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

  it 'allows a user to deposit funds' do
    account.deposit(1000)
    expect(account.balance).to eq 1000
  end
end
