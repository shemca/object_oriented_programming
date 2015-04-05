class Rover
	attr_reader :instructions

	DIRECTIONS = ["n", "e", "s", "w"]

	def initialize (x = 0, y = 0, direction = "n")
			@x_cord = x
			@y_cord = y
			@direction = direction	
	end
	
	def read_instructions

			puts "Where would you like to go? You can [M]ove, turn [L]eft or [R]ight. \nOR type \"exit\" to quit. "
			@instructions = gets.strip.downcase
			
			@instructions.each_char do |i|
				case i
					when "l"
					@direction = DIRECTIONS[DIRECTIONS.find_index(@direction)-1]
					
					when "r"

					@direction = DIRECTIONS[(DIRECTIONS.find_index(@direction)+1)%4]
					
					when "m"
						move

					when "exit"
					break	
				end
			end
	end
	def move
		case @direction
			when "n"
				@y_cord +=1
			when "s"
				@y_cord -=1
			when "e"
				@x_cord +=1
			when "w"
				@x_cord -=1		
		end
	end
	
	

	def to_s
 	"I am at #{@x_cord}, #{@y_cord} -> #{@direction}"
 	end

end

rover =  Rover.new

while true
	rover.read_instructions
	puts rover

	if rover.instructions == "exit"
		exit
	end
end

