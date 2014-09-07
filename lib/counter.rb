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
    range = convert(data)
    output(name,range)
  end 

  def convert(data)
    data.flatten
  end

  def palindrome(string)
    string == string.reverse
  end

  def add_palindrome(string)
    @palindromes << string if palindrome(string)
  end

  def empty_holder
    @palindromes.reject!{ |str| str}
  end

#this method is a bit long...but makes sense..
  def collect_palindromes(data)
    range = data.map{ |str| str.to_i}
    values = range[0]..range[1]
    strings = values.map{ |i| i.to_s}
    strings.select{ |str| add_palindrome(str)}
    @palindromes.count
  end

  def output(name,range)
    num = collect_palindromes(range)
    puts "File checked: #{name} "
    puts "Range: #{range[0]} to #{range[1]}"
    puts "Palindromes: #{num}"
    empty_holder
  end
end

Counter.new.access_files