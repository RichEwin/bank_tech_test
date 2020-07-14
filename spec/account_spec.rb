# frozen_string_literal: true

require 'account'

describe Account do
  subject(:account) { Account.new }

  it 'creates a new Account' do
    expect(account).to be_instance_of Account
  end
end
