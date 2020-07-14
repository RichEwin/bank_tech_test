# frozen_string_literal: true

require_relative 'transaction'
require_relative 'statement'

class Account
  attr_reader :balance, :transactions

  def initialize(deposit_transaction = Transaction)
    @deposit_transaction = deposit_transaction
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions.push(@deposit_transaction.new(balance: @balance, credit: amount))
  end

  def withdraw(amount)
    @balance -= amount
    @transactions.push(@deposit_transaction.new(balance: @balance, debit: amount))
    raise 'Insufficient Funds' if @balance < amount
  end

  def statement
    statement = Statement.new
    per_transaction = @transactions.map(&:display)
    statement.print_statement(per_transaction)
  end
end
