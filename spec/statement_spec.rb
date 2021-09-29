require 'statement'

describe Statement do
  let(:test_transactions) { [['29-09-2021', 100], ['29-09-2021', -50]] }

  context 'the account should print a correctly formatted statement' do
    before(:each) do
      subject.compile_statement(test_transactions)
    end

    it 'should take an array of mixed data types and convert it to a string' do
      expect(subject.statement_transactions).to eq([['29-09-2021 || 100 || || 100'],
                                                    ['29-09-2021 || || 50 || 50']])
    end

    it 'should print off a statement with two lines including the date and amount' do
      expect do
        subject.print_statement
      end.to output("date       || credit || debit || balance\n29-09-2021 || || 50 || 50\n29-09-2021 || 100 || || 100\n").to_stdout
    end
  end
end
