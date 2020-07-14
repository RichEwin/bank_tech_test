# frozen_string_literal: true

require_relative 'account'

class Statement
  attr_reader :header

  def initialize
    @header = 'date || credit || debit || balance'
  end
end
