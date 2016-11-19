require 'iteration'

require "time"

describe 'benchmark' do
  it 'should run the block, and return the amount of time (in seconds) it took to run the block' do
    expect(benchmark {}).to be_within(0.1).of(0)
  end
  it 'should run the block, and return the amount of time (in seconds) it
    took to run the block' do
    proc = Proc.new {sleep 1}
    expect(benchmark(2,&proc)).to be_within(0.1).of(2)
  end
end


describe "race" do
  it "takes an array of procs and returns the one with the shorter runtime" do
    proc1 = Proc.new {sleep 3}
    proc2 = Proc.new {sleep 1}
    proc3 = Proc.new {sleep 2}
    expect(race(1,[proc1,proc2,proc3])).to eq(1)
  end
end

describe "eval_block" do
  it "takes some arguments and a block. It should call the block, passing all the arguments to
the block at once (individually, not as an array) using the splat operator. If the user doesn't
supply the block, it should print out \"NO BLOCK GIVEN!\"." do
    expect(eval_block(5,2,3)).to eq("NO BLOCK GIVEN!")
    expect(eval_block(1,2,3,4,5) {|*args| args.inject(:+)})
        .to eq(15)
    expect(eval_block("Kerry", "Washington", 23) do |fname, lname, score|
      puts "#{lname}, #{fname} won #{score} votes."
    end).to eq(nil)
  end
end

describe "factors" do
  it "returns an array containing all the factors of a given number" do
    expect(factors(6)).to eq([6,3,2,1])
  end
end

describe "bubble_sort!" do
  it 'should modify the array so that it is in sorted order' do
    expect([3, 6, 1, 5].bubble_sort!).to eq([1, 3, 5, 6])
    expect([3, 6, 1, 5].bubble_sort!{ |num1, num2| num1 <=> num2 }).to eq([1, 3, 5, 6])
  end
end

describe "bubble_sort" do
  it 'should return a new array that is in sorted order' do
    expect([3, 6, 1, 5].bubble_sort).to eq([1, 3, 5, 6])
  end
end


describe "substrings" do
  it "takes a string and returns and array containing each of its substrings" do
    expect(substrings("cat")).to eq(["c","ca","cat","a","at","t"])
  end
end

describe "subwords" do
  it "calls substrings, filtering it to return only valid words" do
    dictionary = ["cat","a","at"]
    expect(subwords("cat",dictionary)).to eq(["cat","a","at"])
  end
end

describe "doubler" do
  it "takes an array of integers and returns an array with the original elements multiplied by
two" do
    expect([1,3,5].doubler).to eq([2,6,10])
  end
end

describe "my_each" do
  it "takes a block, calls the block on every element of the array, and then returns the original
 array" do
    return_value = [1, 2, 3].my_each do |num|
      puts num
    end.my_each do |num|
      puts num
    end
    expect(p return_value).to eq([1, 2, 3])
  end
end

describe "my_map" do
  it "takes a block, calls the block on every element of the array, and returns an array of the
new values" do
    expect([1, 2, 3].my_map {|num| num + 1}).to eq([2,3,4])
  end
end

describe "my_select" do
  it "Returns a new array containing all elements for which the given block returns a true value" do
    expect([1,2,3,4].my_select {|num| num%2 == 0}).to eq([2,4])
  end
end

describe 'my_inject' do
  it "Combines all elements of enum by applying a binary operation, specified by a block or a
symbol that names a method or operator" do
    expect([5,6,7,8,9,10].my_inject { |sum, n| sum + n }).to eq(45)
    expect([5,6,7,8,9,10].my_inject(1) { |product, n| product * n }).to eq(151200)
  end
end


describe "concatenate" do
  it "takes in an Array of Strings and uses inject to return the
concatenation of the strings." do
    expect(concatenate(["Yay ", "for ", "strings!"])).to eq("Yay for strings!")
  end
end