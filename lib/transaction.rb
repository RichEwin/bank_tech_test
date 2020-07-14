# frozen_string_literal: true

class Transaction
  attr_reader :balance

  def initialize(balance: nil)
    @balance = balance
  end
end
