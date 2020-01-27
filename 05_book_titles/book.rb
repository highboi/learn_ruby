class Book
# write your code here
	def title=(val)
		val = val.split(" ")
		if val.length == 1
			word = val[0][0].upcase + val[0][1..val[0].length-1]
			val[0] = word
			val = val.join(" ");
		else
			(0..val.length-1).each { |i|
				if (val[i] == "and" or val[i] == "of" or val[i] == "the" or val[i] == "in" or val[i] == "a" or val[i] == "an") and val[i] != val[0]
					nil
				else
					word = val[i][0].upcase + val[i][1..val[i].length-1]
					val[i] = word
				end
			}
			val = val.join(" ")
		end
		@title = val
	end

	def title
		@title
	end
end
