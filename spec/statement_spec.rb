# frozen_string_literal: true

require 'statement'

describe Statement do
  subject(:statement) { Statement.new }

  it 'creates a new Statement' do
    expect(statement).to be_instance_of Statement
  end

  it 'initializes with a header' do
    expect(statement.header).to eq 'date || credit || debit || balance'
  end
end
