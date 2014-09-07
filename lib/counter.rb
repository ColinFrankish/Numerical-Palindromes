class Counter 

  def initialize
    @palindromes = []
  end

  attr_accessor :palindromes

  def access_files
    Dir['./test_files/*'].each do |name|
      open_file(name)
    end
  end

  def open_file(name)
    data = File.open(name).map do |line|
      line.scan(/\d+/)    
    end
    convert(data)
  end

  def convert(data)
    data.flatten.collect{ |str| str.to_i}
  end

  def palindrome(string)
    string == string.reverse
  end

end