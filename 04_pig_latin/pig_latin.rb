#write your code here
def translate(word)
	word = word.split(" ")
	length = word.length - 1
	(0..length).each { |i|
		if word[i][0] == "a" or word[i][0] == "e"
			word[i] = word[i] + "ay"
		elsif word[i][0..2] == "thr" or word[i][0..2] == "sch" or word[i][0..2] == "squ"
			wordlength = word[i].length - 1
			word[i] = word[i][3..wordlength] + word[i][0..2] + "ay"
		elsif word[i][0..1] == "ch" or word[i][0..1] == "th" or word[i][0..1] == "qu" or word[i][0..1] == "br"
			wordlength = word[i].length - 1
			word[i] = word[i][2..wordlength] + word[i][0..1] + "ay"
		else
			wordlength = word[i].length - 1
			word[i] = word[i][1..wordlength] + word[i][0] + "ay"
		end
	}
	return word.join(" ")
end

var = translate("three")
puts var
