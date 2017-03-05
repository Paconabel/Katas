print "Elige una letra:"

letter_choose = gets

letters = ('a'.."#{letter_choose.chop}").to_a

total_letters = letters.size + 1
letter_number = letters.index("#{letter_choose.chop}")



#empty_spaces = 10

#puts letter.chop.upcase + ("\s" * total_letters) + letter.upcase
#el chop es para que la variable no baje de linea ya que se añade un \n  por defecto
#puts array_letters

# fedcbabcdef
# letra doble de espacios en blanco que numero de letra letra

# puts ("\s" * (total_letters + 1)) + "A"

group = ""

letters.each_with_index do |letter,position|
	#	puts l + ("\s" * p) + l

	#	puts ( ("\s" * position) + letter).reverse + ("\s" * (position + 1)) + letter
	#	puts ("\s" * ((total_letters % (position + 1)) - 1))  + letter + ("\s" * (position + 1)) + letter
	if position == 0
		line = ( "\n" + ("\s" * total_letters) + "A" + ("\s" * total_letters)) 
	else
		line = (("\s" * (total_letters - position))  + letter.upcase + ("\s" * ((position * 2) - 1)) + letter.upcase + ("\s" * (total_letters - position)))
	end

	#puts line
	# if not letters[-1].to_s == letter_choose.to_s
	group += (line + "\n")
	
end
punta_diamante = group.split("\n")
puts punta_diamante
poem = punta_diamante.reverse.drop(1).reverse
# poem = group << group.reverse[0..-2]
puts poem.reverse



