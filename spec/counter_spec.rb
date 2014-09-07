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
    expect(counter.open_file("./test_files/another-test.txt")).to eq([])
  end

  it 'should change the file array data output to integers' do 
    expect(counter.flatten(["1","100"])).to eq(["1","100"])
  end

  it 'should know what a palindrome is' do 
    expect(counter.palindrome("101")).to be true 
    expect(counter.palindrome("98")).to be false
  end

  it 'should be able to add palindromes to the instance variable array' do 
    counter.add_palindrome("99")
    expect(counter.palindromes.length).to eq(1)
    counter.add_palindrome("85")
    expect(counter.palindromes.length).to eq(1)
  end

  it 'should be able to empty the palindromes array' do 
    counter.add_palindrome("99")
    counter.add_palindrome("88")
    expect(counter.empty_holder).to eq []
  end

   it 'should map through the range to extract palindromes' do 
    expect(counter.collect_palindromes([1,100])).to include "1","2","22"
    expect(counter.palindromes.count).to eq 18
   end


  it 'should output a message' do 
    expect(counter.output).to eq []
  end
end