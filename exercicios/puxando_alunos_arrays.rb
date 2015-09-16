require "byebug"

@big_array=[3,6,12,23,56,43,17,13,14,15,28,21,16,11,24]
@small_array=[12,56,17,14,54,200,180,9,23,24]

def arrays_intersection 
	intersection=@big_array.select { |i| @small_array.include?(i) }
	puts intersection
end

arrays_intersection


def hardcore
	novo_array=[]
	@big_array.each do |big_item|
		@small_array.each do |small_item|
			novo_array << big_item if big_item == small_item
		end
	end
	novo_array
end

puts hardcore