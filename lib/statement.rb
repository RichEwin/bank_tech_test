# frozen_string_literal: true

require_relative 'account'

class Statement
  attr_reader :header

  def initialize
    @header = 'date || credit || debit || balance'
  end

  def print_statement(per_transaction)
    puts @header
    puts per_transaction.join("\n")
  end
end
