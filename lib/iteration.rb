require "time"
require "byebug"

def benchmark(number=1,&proc)
  start = Time.now
  number.times{proc.call}
  Time.now - start
end

def race(number=1,procs = [])
  best_time = benchmark(number, &procs[0])
  fast_proc = ""
  procs.each do |p|
    curr_time = benchmark(number,&p)
    if(curr_time < best_time)
      best_time = curr_time
      fast_proc = procs.index(p)
    end
  end
  fast_proc
end

def eval_block(*args,&proc)
  if proc == nil
    "NO BLOCK GIVEN!"
  else
    proc.call(*args)
  end
end

def factors(num)
  n = num
  factors = []
  while n > 0
    if num % n == 0
      factors << n
    end
    n -= 1
  end
  factors
end

def substrings(word)
  sub = []
  word.length.times do |t|
    e = t
    while e < word.length
      sub << word[t..e]
      e += 1
    end
  end
  sub
end

def subwords(word,dictionary)
  substrings(word).keep_if do |a|
    dictionary.include?(a)
  end
end

class Array
  def bubble_sort!(&proc)
    proc ||= Proc.new { |x, y| x <=> y }
    unsorted = true
    i = 0
    while unsorted
      if i < self.length - 1
        p proc.call(self[i] , self[i+1])
        if proc.call(self[i] , self[i+1]) == 1
          self[i],self[i+1]=self[i+1],self[i]
          i += 1
        else
          i -= 1
        end
      else
        unsorted = false
      end
    end
    self
  end

  def bubble_sort
    self.dup.bubble_sort!
  end

  def doubler
    double = []
    self.each { |x| double << (x*2) }
    double
  end

  def my_each(&proc)
    array_length = self.length
    i = 0
    while i < (array_length)
      proc.call(self[i])
      i += 1
    end
    self
  end

  def my_map(&proc)
    new_arry = []
    self.my_each {|x| new_arry << proc.call(x) }
    new_arry
  end

  def my_select(&proc)
    select_array = []
    self.my_each do |x|
      if proc.call(x)
        select_array << x
      end
    end
    select_array
  end

  def my_inject(n=0,&proc)
    sum=n
    self.my_each do |x|
      sum = proc.call(sum,x)
    end
    sum
  end
end


def concatenate(arr)
  arr.inject {|string, word| string + word}
end