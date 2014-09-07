class Counter 

  def initialize
    @palindromes = []
  end

  attr_accessor :palindromes

  def access_files
    Dir['./test_files/*'].each do |name|
      name
    end
  end
end