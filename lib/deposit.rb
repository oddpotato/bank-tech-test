require 'date'

class Deposit

    attr_reader :deposit, :stripped_date

    def initialize(amount)
        @stripped_date = Date.today.strftime("%d-%m-%Y")
        @deposit = [amount, stripped_date]
    end


end