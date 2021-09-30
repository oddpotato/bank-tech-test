require 'date'
require_relative 'statement'

class Account
  attr_reader :account_transactions

  def initialize
    @account_transactions = []
  end

  def deposit(amount)
    validate(amount)
    @account_transactions.push([format_date, format_money(amount).to_i])
  end

  def withdraw(amount)
    validate(amount)
    @account_transactions.push([format_date, format_money(-amount).to_i])
  end

  def create_statement
    statement = Statement.new
    statement.compile_statement(@account_transactions)
    statement.print_statement
  end

  private

  def validate(amount)
    raise 'Amount must be a number' if !amount.is_a?(Integer) && !amount.is_a?(Float)
    raise 'Amount must be greater than 0' if amount <= 0
  end

  def format_date
    # This utilizes the 'string format time' method - see full documentation below
    # https://ruby-doc.org/stdlib-2.4.2/libdoc/date/rdoc/Date.html#method-i-strftime
    @stripped_date = Date.today.strftime('%d-%m-%Y')
  end

  def format_money(amount)
    # This utilizes the sprintf formatting method - see full documentation below
    # https://ruby-doc.org/core-2.1.2/Kernel.html#method-i-sprintf
    @fixed_amount = format('%05.2f', amount)
  end
end