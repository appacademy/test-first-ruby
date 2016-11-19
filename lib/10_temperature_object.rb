class Temperature

  def initialize(temp)
    if temp.has_key?(:f)
      self.to_celsius = (temp[:f])
    else
      @temperature = (temp[:c]).to_f
    end
  end

  def to_celsius=(f)
    @temperature = ((f - 32) * 5/9).to_f
  end

  def in_fahrenheit
    (@temperature * 9/5) + 32
  end

  def in_celsius
    @temperature
  end

  def self.from_celsius(temp)
    return Temperature.new({:c => temp})
  end

  def self.from_fahrenheit(temp)
    return Temperature.new({:f => temp})
  end

end

class Celsius < Temperature
  def initialize(temp)
    @temperature = temp
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    self.to_celsius = temp
  end
end
