# frozen_string_literal: true

class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << amount
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << -amount
    raise 'Insufficient Funds' if @balance < amount
  end
end
