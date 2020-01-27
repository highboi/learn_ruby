class Timer
  #write your code here
	#create a class attribute
	attr_accessor :seconds
	#some variables to convert time
	@hourInSeconds = 3600
	@minuteInSeconds = 60

	#initialize variables to a certain value
	def initialize
		@seconds = 0
	end

	#allow the programmer to set the "seconds" attribute equal to something
	def seconds=(seconds)
		@seconds = seconds
	end

	def seconds
		@seconds
	end

	def time_string
		Time.at(@seconds).utc.strftime("%H:%M:%S")
	end
end
