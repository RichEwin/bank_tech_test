# frozen_string_literal: true

require 'transaction'

describe Transaction do
  subject(:transaction) { Transaction.new }

  it 'creates a new Transaction' do
    expect(transaction).to be_instance_of Transaction
  end
end
