class Dictionary
  attr_accessor :entries, :keywords

  def initialize
    @entries = {}
  end

  def add(definition)
    if definition.class == String
      definition = {definition => nil}
    end

    definition.each do |key, value|
      @entries[key] = value
    end
  end

  def keywords
    keys = []
    @entries.each do |key, value|
      keys << key
    end
    keys.sort
  end

  def include?(key)
    self.keywords.include?(key)
  end

  def find(key_prefix)
    found_entries = entries.select do |key, value|
      key[0...key_prefix.length] == key_prefix
    end
  end

  def printable
    @entries.sort.map do |key, value|
      "[#{key}] \"#{value}\""
    end.join("\n")
  end
end
