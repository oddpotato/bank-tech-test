require 'date'
require_relative 'valid'

class Account
  attr_reader :account_balance, :account_transactions

  def initialize
    @account_balance = 0
    @account_transactions = []
  end

  def deposit(amount)
    validate(amount)
    @account_balance += amount
    @account_transactions.push(["#{format_date} || #{format_money(amount)} || || #{format_money(account_balance)}"])
  end

  def withdraw(amount)
    validate(amount)
    @account_balance -= amount
    @account_transactions.push(["#{format_date} || || #{format_money(amount)} || #{format_money(account_balance)}"])
  end

  def statement
    puts 'date || credit || debit || balance'
    account_transactions.reverse_each { |line| puts line }
  end

  private

  def validate(amount)
    Valid.new(amount)
  end

  def format_date
    # This utilizes the 'string formation time' method - see full documentation below
    # https://ruby-doc.org/stdlib-2.4.2/libdoc/date/rdoc/Date.html#method-i-strftime
    @stripped_date = Date.today.strftime('%d-%m-%Y')
  end

  def format_money(amount)
    # This utilizes the sprintf float formatting method - see full documentation below
    # https://ruby-doc.org/core-2.1.2/Kernel.html#method-i-sprintf
    @fixed_amount = format('%05.2f', amount)
  end
end

account = Account.new
account.deposit(1000)
account.withdraw(500)
account.statement
