require 'date'

class Withdrawal

    attr_reader :withdrawal, :stripped_date

    def initialize(amount)
        @stripped_date = Date.today.strftime("%d-%m-%Y")
        @withdrawal = [amount, stripped_date]
    end

end