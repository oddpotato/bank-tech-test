require 'date'

RSpec.describe Array do

    subject(:sally) do 
        ['Mustang', 'Sally']
    end

    it 'expects sally to have a length of 2' do
        expect(subject.length).to eq(2)
        subject.pop
        expect(subject.length).to eq(1)
    end

    it 'expects Sally to be original array' do
        expect(subject.length).to eq(2)
    end
end