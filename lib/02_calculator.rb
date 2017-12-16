def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(array)
	if array == []
		return 0
	elsif array.length == 1
		return array[0]
	else
		sum = 0
		array.each { |number| sum += number}
	end
	sum
end

#def multiply(numbers) #I tested this in Ruby multiple times (get it?) and I keep getting this error: undefined method `inject' for 2:Fixnum
#    numbers.inject(:*) #Did you mean?  inspect 
#end 

def power(number)
	number ** 2
end

def factorial(number)
	return 1 if number == 1 || number == 0
		number = number * factorial(number - 1)
end