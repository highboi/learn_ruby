#write your code here
def add(a, b)
	return a + b
end

def subtract(a, b)
	return a - b
end

def sum(arr)
	number = 0
	arr.each { |num|
		number += num
	}
	return number
end
