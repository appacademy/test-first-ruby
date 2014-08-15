class Temperature
  def Temperature.from_celsius(temp)
    Temperature.new(:c => temp)
  end

  def Temperature.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end

  def initialize(options = {})
    if options.include?(:f)
      @celsius_temp = Temperature.ftoc(options[:f])
    elsif options.include?(:c)
      @celsius_temp = options[:c]
    else
      raise "No temperature given"
    end
  end

  def in_celsius
    @celsius_temp
  end

  def in_fahrenheit
    Temperature.ctof(@celsius_temp)
  end

  private
  def Temperature.ctof(ctemp)
    (ctemp * 9.0 / 5.0) + 32
  end

  def Temperature.ftoc(ftemp)
    (ftemp - 32) * 5.0 / 9.0
  end
end

class Celsius < Temperature
  def initialize(temp)
    super(:c => temp)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(:f => temp)
  end
end
