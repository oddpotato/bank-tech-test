require 'account'

describe Account do
    
    before(:each) do 
        subject.deposit(500)
    end

    context 'the account should accept a deposit' do

        it 'a deposit should change the account balance' do
            expect(subject.account_balance).to eq(500)
        end

        it 'a deposit should change the length of the account transactions array' do
            expect(subject.account_transactions.length).to eq(1)
        end

    end

    context 'the account should accept a withdrawal' do
        
        before(:each) do
            subject.withdraw(500)
        end

        it 'a withdrawal should change the account balance' do
            expect(subject.account_balance).to eq(0)
        end

        it 'a withdrawal should change the length of the account transactions array' do
            expect(subject.account_transactions.length).to eq(2)
        end
    end


    context 'the account should print a correctly formatted statement' do

        # The strftime method is called here so that the test can stay up to date
        # with whenever it's being run. Unfortunately that does make for code that's
        # long, but it should work!

        it 'should print off a statement with two lines including the date and amount' do
            expect{subject.statement}.to output("date       || credit || debit || balance\n#{Date.today.strftime("%d-%m-%Y")} || 500.00 || || 500.00\n").to_stdout
        end

    end


    context 'the program should reject incorrect input' do
        
        it 'deposit should reject input that isn\'t an integer or float' do
            expect {subject.deposit('boop')}.to raise_error(RuntimeError, "Amount must be a number")
        end

        it 'withdraw should reject input that isn\'t an integer or float' do
            expect {subject.withdraw('boop')}.to raise_error(RuntimeError, "Amount must be a number")
        end

        it 'desposit should reject input that is equal to or less than 0' do
            expect {subject.deposit(0)}.to raise_error(RuntimeError, "Amount must be greater than 0")
        end

        it 'withdraw should reject input that is equal to or less than 0' do
            expect {subject.withdraw(-11)}.to raise_error(RuntimeError, "Amount must be greater than 0")
        end

    end

end