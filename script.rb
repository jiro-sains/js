add_numbers = lambda do |num1, num2|
	return num1 + num2
end

substract_numbers = lambda do |num1, num2|
	return num1 - num2
end

def combine(m, num1, num2)
	return m.call(num1, num2)
end

puts combine(substract_numbers, 3, 4)

#puts add_numbers.call(3,4)