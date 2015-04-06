class Taxinate

	attr_accessor :item, :price

	def initialize (item, price)
		@item = item
		@price = price
		@tax = 0
		@price_total = 0
		@imptax = 0
	end

	def taxgen
		@tax = (@price * 0.1)
		@price = (@price + @tax)
		@price_total = @price.round(2)
	end

	def taxexempt
		@tax = 0
		@price_total = @price.round(2)
	end

	def taximp
		@tax = (@price * 0.1)
		@price = (@price + @tax)
		@imptax = (@price *0.05)
		@price_total= (@price + @imptax).round(2)
	end

	def taxtype
		puts "Is the item (G)eneral, (E)xemption(food, book, med products), or (I)mported?"

		command = gets.chomp.downcase

		case command
			when "g"
				taxgen
			when "e"
				taxexempt
			when "i"
				taximp
		end
	end
	
end

	def to_s
			puts "item: #{@item}, price:$#{@price}"
	end

class List

	attr_accessor :list

		def initialize
			@list = []
		end


		def listitem
			puts "Grocery list!"
			puts "Enter item:"
			item=gets.chomp
			puts "Enter the price $ :"
			price = gets.chomp.to_f
			shopping_list=hash.new
			new_item = Taxinate.new(item, price)
			new_item.taxtype
			puts new_item
			shopping_list << new_item
		end

		def to_s
			puts "The item list: #{shopping_list}"

		end
end

while true

	my_list = List.new
	my_list.listitem
	puts my_list
	end