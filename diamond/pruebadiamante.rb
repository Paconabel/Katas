class Diamond 

def print_diamond(letter)


print "Elige una letra:"

letter_choose = gets

letters = ('a'.."#{letter_choose.chop}").to_a

total_letters = letters.size + 1
letter_number = letters.index("#{letter_choose.chop}")


group = ""

letters.each_with_index do |letter,position|

	if position == 0
		line = ( "\n" + ("\s" * total_letters) + "A" + ("\s" * total_letters)) 
	else
		line = (("\s" * (total_letters - position))  + letter.upcase + ("\s" * ((position * 2) - 1)) + letter.upcase + ("\s" * (total_letters - position)))
	end

	group += (line + "\n")
	
end
punta_diamante = group.split("\n")
puts punta_diamante
poem = punta_diamante.reverse.drop(1).reverse

puts poem.reverse

end	
end

Diamond.new.print_diamond('')