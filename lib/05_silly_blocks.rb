def reverser
  phrase = yield
  arr = []
  phrase.split.each do |word|
    arr << word.reverse
  end

  arr.join(" ")
end

def adder(num = 1)
  num + yield
end

def repeater(num = 1)
  num.times { yield }
end