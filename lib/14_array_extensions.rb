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
end