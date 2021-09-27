require 'withdrawal'

describe Withdrawal do
    subject {Withdrawal.new(1000)}

    context 'am instantiating a new instance of Deposit' do
        it 'expects the deposit array length to be 2' do
            expect(subject.withdrawal.length).to eq(2)
        end

        it 'expects the date to be today\'s date stripped to ISO formatting' do
            expect(subject.stripped_date).to eq(Date.today.strftime("%d-%m-%Y"))
        end
    end

end