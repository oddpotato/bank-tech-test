require 'deposit'

describe Deposit do
    subject {Deposit.new(1000)}

    context 'am instantiating a new instance of Deposit' do
        it 'expects the deposit array length to be 2' do
            expect(subject.deposit.length).to eq(2)
        end

        it 'expects the date to be stripped to ISO formatting' do
            expect(subject.stripped_date).to eq(Date.today.strftime("%d-%m-%Y"))
        end
    end

end