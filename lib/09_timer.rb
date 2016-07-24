class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def format(num)
    if num == 0
      "00"
    elsif num < 10
      "0#{num}"
    else
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
