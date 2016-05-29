def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end 

def sum(arr)
	arr.reduce(0, :+)
end

def multiply(arr)
	arr.reduce(1, :*)
end

def power(num, power)
	num**power
end

def factorial(num)
	(1..num).reduce(1, :*)
end