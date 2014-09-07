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

  it 'should be able to open a file and extract from and to data' do 
    expect(counter.open_file("./test_files/another-test.txt")).to eq([1000,10000])
    expect(counter.open_file("./test_files/test-2.txt")).to eq([11200000, 11300000])
  end
end