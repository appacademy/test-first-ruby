class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / (60 * 60)
    minutes = (@seconds % (60 * 60)) / 60
    seconds = (@seconds % 60)

    [Timer.format_num(hours), Timer.format_num(minutes), Timer.format_num(seconds)].join(":")
  end

  private
  def Timer.format_num(num)
    (num < 10) ? "0#{num}" : num.to_s
  end
end
