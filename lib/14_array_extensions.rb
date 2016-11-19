class Array
  def sum
    sum_total = 0
    self.each do |x|
      sum_total = sum_total + x
    end
    sum_total
  end

  def square
    self.map do |x|
      x * x
    end
  end

  def square!
    self.each_with_index do |x,i|
      if x > 0
        self[i] = x * x
      end
    end
  end

  def my_uniq
    unique = []
    self.each do |x|
      if !unique.include?(x)
        unique << x
      end
    end
    unique
  end

  def two_sum
    pairs = []
    self.each_with_index do |x, n|
      i = n + 1
      while i < self.length
        y = self[i]
        if (x + y) == 0 && i != n
          pairs << [n,i]
        end
        i += 1
      end
    end
    pairs
  end

  def median
    if self.length.odd?
      self[self.length/2]
    else
      mid = (self.length/2-1)
      (self[mid].to_f + self[mid+1].to_f)/2
    end
  end

  def my_transpose
    transpose = []
    self.each_with_index do |x, i|
      x.each_with_index do |y , n|
        if !transpose[n]
          transpose[n] = []
        end
        transpose[n][i] = y
      end
    end
    transpose
  end

end