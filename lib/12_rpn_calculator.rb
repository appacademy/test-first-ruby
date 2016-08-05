require 'byebug'
class RPNCalculator
  attr_accessor :input


  def initialize
    @input = []
    @operators = [:+,:-,:*,:/]
  end

  def push(num)
    @input.push(num.to_f)
  end

  def calculate(operator)
    if @input.length > 1
      @input.push(operator)
    else
      raise 'calculator is empty'
    end
  end

  def plus
    calculate(:+)
  end

  def minus
    calculate(:-)
  end

  def times
    calculate(:*)
  end

  def divide
    calculate(:/)
  end

  def tokens(string)
    string.split(' ').map do |n|
      if @operators.include?(n.to_sym)
        n.to_sym
      else
        n.to_f
      end
    end
  end

  def evaluate(string)
    @input = tokens(string)
    value
  end

  def value
    location = 0
    func_operators = @input & @operators
    while func_operators.length > 0
      if @input.include?(func_operators[0])
        op = func_operators[0]
        location = @input.index(op) - 2
        nums = @input.slice!(location,2)
        @input[location] = eval(nums[0].to_s + op.to_s + nums[1].to_s)
      else
        func_operators.shift
      end
    end
    @input[location]
  end
end
