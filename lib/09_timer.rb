class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def format(num)
    p num
    if num == 0
      p "zero"
      "00"
    elsif num < 10
      p "one"
      "0#{num}"
    else
      p "other"
      "#{num}"
    end
  end

  def time_string
    hours = @seconds/3600
    minutes = (@seconds - hours*3600)/60
    seconds = (@seconds - hours*3600 - minutes*60) % 60
    format(hours) + ":" + format(minutes) + ":" + format(seconds)
  end
end
