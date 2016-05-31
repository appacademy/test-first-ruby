def benchmark(num = 1)
  start = Time.now
  num.times { yield }
  elapsed_time = (Time.now - start) / num
end

def race(procs, num = 1)
  arr = []
  procs.each do |proc|
    runtime = benchmark(num)
    arr << runtime
  end
  index = arr.index(arr.max)
  procs[index]
end

def eval_block(*args, &prc)
  if prc.nil?
    "NO BLOCK GIVEN"
  else
    p yield *args
  end
end

def factors(num)
  (1..num).select { |n| num % n == 0 }
end

class Array
  def bubble_sort!(&prc)
    sorted = false
    until sorted
      sorted = true
      (0..self.length - 2).each do |idx|
        if prc.call(self[idx], self[idx + 1]) == 1
          sorted = false
          self[idx], self[idx + 1] = self[idx + 1], self[idx]
        end
      end
    end
    p self
  end

  def bubble_sort(&prc)
    copy = self.dup
    copy.bubble_sort!(&prc)
  end
end

def substrings(string)
  arr = []
  (0...string.length).each do |i|
    (i...string.length).each do |j|
      arr << string[i..j]
    end
  end
  arr
end

def subwords(string, dict)
  arr = []
  subs = substrings(string)
  subs.each do |sub|
    arr << sub if dict.include?(sub)
  end
  arr
end

def doubler(ints)
  ints.map { |int| int * 2 }
end

class Array
  def my_each(&prc)
    for element in self
      yield element
    end
  end

  def my_map(&prc)
    arr = []
    self.my_each do |element|
      arr << yield(element)
    end
    p arr
  end

  def my_select(&prc)
    arr =[]
    self.my_each do |element|
      if yield(element)
        arr << element
      end
    end
    p arr
  end

  def my_inject(&prc)
    sum = self.first
    self[1..-1].my_each do |element|
      sum = yield(sum, element)
    end
    p sum
  end
end

def concatenate(strings)
  strings.inject { |strings, string| strings + " " + string }
end