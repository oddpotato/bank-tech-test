require 'account'

describe Account do
  before(:each) do
    subject.deposit(500)
  end

  context 'the account should accept a deposit' do
    it 'a deposit should change the length of the account transactions array' do
      expect(subject.account_transactions.length).to eq(1)
    end
  end

  context 'the account should accept a withdrawal' do
    before(:each) do
      subject.withdraw(500)
    end

    it 'a withdrawal should change the length of the account transactions array' do
      expect(subject.account_transactions.length).to eq(2)
    end
  end

  context 'the program should reject incorrect input' do
    it 'deposit should reject input that isn\'t an integer or float' do
      expect { subject.deposit('boop') }.to raise_error(RuntimeError, 'Amount must be a number')
    end

    it 'withdraw should reject input that isn\'t an integer or float' do
      expect { subject.withdraw('boop') }.to raise_error(RuntimeError, 'Amount must be a number')
    end

    it 'desposit should reject input that is equal to or less than 0' do
      expect { subject.deposit(0) }.to raise_error(RuntimeError, 'Amount must be greater than 0')
    end

    it 'withdraw should reject input that is equal to or less than 0' do
      expect { subject.withdraw(-11) }.to raise_error(RuntimeError, 'Amount must be greater than 0')
    end
  end
end
