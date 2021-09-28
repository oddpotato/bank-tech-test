require 'valid'

describe Valid do

  context 'expects valid to raise numerous errors' do

    let(:with_string){ Valid.new('boop')}
    let(:with_zero){ Valid.new(0) }

    it 'raises an error if the argument isn\'t an integer' do
        expect{with_string}.to raise_error(RuntimeError, "Amount must be a number")
    end

    it 'raises an error if the argument is less than 0' do
        expect{with_zero}.to raise_error(RuntimeError, "Amount must be greater than 0")
    end
  end

  context 'expects valid to accept a valid input' do

    it 'doesn\'t raise an error when an integer is passed to it' do
        expect{Valid.new(23)}.not_to raise_error
    end

    it 'doesn\'t raise an error when a float is passed to it' do
        expect{Valid.new(3.42)}.not_to raise_error
    end

  end


end
