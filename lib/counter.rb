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
#unsure if I want an array of strings or integers at this stage!
  def convert(data)
    data.flatten#.collect{ |str| str}
  end

  def palindrome(string)
    string == string.reverse
  end

  

end