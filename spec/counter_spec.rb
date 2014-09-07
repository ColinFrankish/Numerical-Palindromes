require 'counter'

describe 'Counter' do 

  let(:counter){Counter.new}

  it'should initialize with an empty palindrome array' do 
    expect(counter.palindromes).to eq([])
  end

  it'should be able to access all test files' do 
    expect(counter.access_files).to include("./test_files/another-test.txt")
    expect(counter.access_files).to include("./test_files/test-1.txt")
  end
end