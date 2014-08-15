def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(nums)
  total = 0

  nums.each do |num|
    total += num
  end

  total
end

def multiply(nums)
  total = 1

  nums.each do |num|
    total *= num
  end

  total
end

def power(base, exponent)
  nums = []

  exponent.times do
    nums << base
  end

  multiply(nums)
end

def factorial(i)
  if i == 0
    # this is the base case
    1
  else
    i * factorial(i - 1)
  end
end
