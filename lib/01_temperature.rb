def ftoc(fahrenheit)
	(fahrenheit - 32) * 5 / 9
end

def ctof(celsius)
	fahrenheit = (celsius * 9 / 5) + 32
	fahrenheit.to_f
end


