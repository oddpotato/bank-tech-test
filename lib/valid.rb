class Valid
  def initialize(amount)
    # The validation tests here are in order of importance
    # Any input that isn't a number should be caught before
    # any amount below or equal to 1
    raise 'Amount must be a number' if !amount.is_a?(Integer) && !amount.is_a?(Float)
    raise 'Amount must be greater than 0' if amount <= 0
  end
end
