class Dictionary
  attr_accessor :entries, :keywords
  def initialize
    @entries = {}
  end

  def add(animal)
    if animal.class == String
      @entries[ animal ] = nil
    elsif animal.class == Hash
      @entries.merge!(animal)
    end
  end

  def keywords
    @entries.keys.sort!
  end

  def include?(key)
    @entries.has_key?(key)
  end

  def find(key)
    @entries.select {|k,v| k.include?(key)}
  end

  def printable
    printed = ""
    self.keywords.each do |key|
      printed += "[#{key}] \"#{@entries[key]}\"\n"
    end
    printed.chomp
  end
end
