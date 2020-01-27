#write your code here
def echo(saying)
	return saying
end

def shout(saying)
	return saying.upcase
end

def repeat(saying, num=2)
	saying = (saying + " ") * num
	saying = saying[0...-1]
	return saying
end

def start_of_word(word, letter)
	arr = []
	letter -= 1
	(0..letter).each do |num|
		arr << word[num]
	end
	return arr.join("")
end

def first_word(word)
	word = word.split(" ")
	return word[0]
end

def titleize(word)
	word = word.split(" ")
	wordlength = word.length - 1
	for i in 0..wordlength
		if word[i] == "and" or word[i] == "the" or word[i] == "over"
			if word[0] == word[i]
				word[i][0] = word[i][0].upcase
			end
		else
			word[i][0] = word[i][0].upcase
		end
	end
	return word.join(" ")
end
