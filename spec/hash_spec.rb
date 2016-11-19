require 'hash_class'

describe 'difference' do
  it 'should eturn a new hash containing only the keys that appear in one or the other of the hashes but not both' do
    hash_one = { a: "alpha", b: "beta" }
    hash_two = { b: "bravo", c: "charlie" }
    expect(hash_one.difference(hash_two)).to eq({ a: "alpha", c: "charlie" })
  end
end
