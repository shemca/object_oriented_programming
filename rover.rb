class Rover

def initialize (init_x, init_y, init_direction)
	@x = init_x
	@y = init_y
	@direction = init_direction	
	end

	def move_forward
		if @direction == "N"
			@y = @y +1
		end
	end

	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "E"
			@direction = "N"
	end

	def turn_right
		if @direction == "N"
			@direction = "E"
			elseif @direction =="E"
			
	end
		
end

def to_s
	"I am at #{@x}, #{@y}, #{@direction}"
end
my_rover = Rover.new(2, 2, "N")
puts my_rover
user_input = "LMLMLMMM".split('')