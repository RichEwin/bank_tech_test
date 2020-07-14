# frozen_string_literal: true

require_relative 'transaction'

class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    deposit_transaction = Transaction.new(balance: @balance, credit: amount)
    @transactions.unshift(deposit_transaction)
  end

  def withdraw(amount)
    @balance -= amount
    withdraw_transaction = Transaction.new(balance: @balance, debit: amount)
    @transactions.unshift(withdraw_transaction)
    raise 'Insufficient Funds' if @balance < amount
  end
end
