class Array
  def sum
    inject(0, :+)
  end

  def square
    self.map { |el| el * el }
  end

  def square!
    self.map! { |el| el * el }
  end
end
