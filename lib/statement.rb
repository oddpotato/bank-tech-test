class Statement
  attr_reader :statement_transactions

  def initialize
    @statement_transactions = []
  end

  def compile_statement(account_transactions)
    account_balance = 0
    account_transactions.each do |line|
      if line[1] > 0
        @statement_transactions.push(["#{line[0]} || #{line[1]} || || #{account_balance += line[1]}"])
      else
        @statement_transactions.push(["#{line[0]} || || #{line[1].abs} || #{account_balance -= line[1].abs}"])
      end
    end
  end

  def print_statement
    puts 'date       || credit || debit || balance'
    @statement_transactions.reverse_each { |line| puts line }
  end
end
