class Calculator
	def self.add(x, y)
		x + y #add the two values
	end

	def self.subtract(x, y)
		x - y #subtract the two values
	end

	def self.multiply(x, y)
		x * y #Multiply the two values
	end

	def self.divide(x, y)
		x / y #divide the two values
	end
end

# puts Calculator.add 5, 12
# puts Calculator.subtract 100, 33
# puts Calculator.multiply 15, 30
# puts Calculator.divide 24, 2


class Elevator
	attr_accessor :floor
	def initialize
		@floor = 1
	end
	def go_up
		if @floor < 13
			@floor += 1
			@cheery_greeting
		else "Your already at the top floor, where are you trying to go? Heaven? Well you cant get there through this building..."
		end
	end

	def go_down
		if @floor > 0
			@floor -= 1
			@cheery_greeting
		else "You cant go down anymore buckweet!"
		end
	end
	def cheery_greeting

			puts "Welcome to #{@floor} floor! Now please leave. You are not welcome here."

	
	end

	def go_to(floor)
		if floor < 13 and floor > 0
			@floor = floor
			cheery_greeting
		else "This building does not have that floor. Silly goose bucket! Pick a number between 1 and 12."
		end
	end
end

elevator = Elevator.new
puts elevator.go_to(9)