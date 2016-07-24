class MyHashSet
  attr_accessor :store
  def initialize
    @store = {}
  end

  def insert(el)
    @store.merge!(el => true)
  end

  def include?(el)
    @store.has_key?(el)
  end

  def delete(el)
    if @store.include?(el)
      @store.delete(el)
      true
    else
      false
    end
  end

  def to_a
    @store.keys
  end

  def union(set2)
    @store.merge!(set2.store)
  end

  def intersect(set2)
    @store.keep_if do |key|
      set2.store.has_key?(key)
    end
  end

  def minus(set2)
    @store.keep_if do |key|
      !set2.store.has_key?(key)
    end
  end
end