require 'account'

describe Account do
    
    context 'the account should initialize correctly' do
        
        it 'the account to initialize with a zero balance' do
            expect(subject.account_balance).to eq(0)
        end

    end
end