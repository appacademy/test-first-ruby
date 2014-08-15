def reverser
  input_str = yield

  input_str.split.map do |word|
    reverse_word(word)
  end.join(" ")
end

def reverse_word(word)
  word.split("").reverse.join
end

def adder(inc=1)
  num = yield
  num += inc
end

def repeater(num=1)
  num.times do
    yield
  end
end
