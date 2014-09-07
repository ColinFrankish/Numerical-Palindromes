require 'counter'

describe 'Counter' do 

  let(:counter){Counter.new}

  it'should initialize with an empty palindrome array' do 
    expect(counter.palindromes).to eq([])
  end

end