require 'my_hash_set'

describe MyHashSet do
  before do
    @hash_set = MyHashSet.new
  end

  it "is empty when created" do
    expect(@hash_set.store).to eq({})
  end

  it "stores parameter as a key in @store, storing true as the value" do
    expect(@hash_set.insert("el")).to eq({"el" => true})
  end

  it "sees if el has previously been inserted by checking the @store; return true or false" do
    @hash_set.insert("el")
    expect(@hash_set.include?("el")).to eq(true)
    expect(@hash_set.include?("hi")).to eq(false)
  end

  it "remove an item from the set. Return true if the item had been in the set, else return false" do
    @hash_set.insert("el")
    expect(@hash_set.delete("el")).to eq(true)
    expect(@hash_set.delete("hi")).to eq(false)
  end

  it "returns an array of the items in the set" do
    @hash_set.insert("test")
    @hash_set.insert("el")
    expect(@hash_set.to_a).to eq(["test","el"])
  end

  it "returns a new set which includes all the elements in EITHER set1 or set2" do
    set1 = MyHashSet.new
    set1.insert("one")
    set2 = MyHashSet.new
    set2.insert("one")
    set2.insert("two")
    set2.insert("three")
    expect(set1.union(set2)).to eq("one" => true, "two" => true, "three" => true)
  end

  it "returns a new set which includes all the elements in BOTH set1 or set2" do
    set1 = MyHashSet.new
    set1.insert("one")
    set2 = MyHashSet.new
    set2.insert("one")
    set2.insert("two")
    set2.insert("three")
    expect(set1.intersect(set2)).to eq("one" => true)
  end

  it "returns a new set which includes all the items of set1 that aren't in set2" do
    set1 = MyHashSet.new
    set1.insert("one")
    set1.insert("four")
    set2 = MyHashSet.new
    set2.insert("one")
    set2.insert("two")
    set2.insert("three")
    expect(set1.minus(set2)).to eq("four" => true)
  end

end
