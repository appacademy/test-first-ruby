class RPNCalculator
  attr_accessor :stack

  def initialize
    self.stack = []
  end

  def push(val)
    self.stack << val.to_f
  end

  def plus
    eval(:+)
  end

  def minus
    eval(:-)
  end

  def times
    eval(:*)
  end

  def divide
    eval(:/)
  end

  def value
    self.stack.last
  end

  def tokens(str)
    str.split.map do |tok|
      case tok
      when "+"
        :+
      when "-"
        :-
      when "*"
        :*
      when "/"
        :/
      else
        tok.to_f
      end
    end
  end

  def evaluate(str)
    tokens(str).each do |op|
      case op
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        push op
      end
    end

    value
  end

  private
  def eval(operation)
    raise "calculator is empty" unless self.stack.size >= 2

    op2 = self.stack.pop
    op1 = self.stack.pop
    case operation
    when :+
      val = op1 + op2
    when :-
      val = op1 - op2
    when :*
      val = op1 * op2
    when :/
      val = op1 / op2
    end

    self.stack << val
  end
end
