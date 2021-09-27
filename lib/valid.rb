class Valid

    def initialize(amount)
        if !(amount.is_a?(Integer)) then raise "Amount must be a number" end
        if amount <= 0 then raise "Amount must be greater than 0" end
    end

end