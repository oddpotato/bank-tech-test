class Valid
  def initialize(amount)
    raise 'Amount must be a number' if !amount.is_a?(Integer) && !amount.is_a?(Float)
    raise 'Amount must be greater than 0' if amount <= 0
  end
end
