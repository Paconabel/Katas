class Diamond 
	
	SEPARADOR = "\s"
	SALTO_LINEA = "\n"

	def initialize(letter)
		@letter = letter
	end

	def print_diamond
		
		group = ""

		letters_used.each_with_index do |letter,position|
		
		line = generate_line_for_letters(letter, position)
		
		group += (line + SALTO_LINEA)
			
		end

		diamond_point = group.split(SALTO_LINEA)
	
		diamond_point_reverse = diamond_point.reverse.drop(1)
		
		final_diamond = (diamond_point + diamond_point_reverse).join(SALTO_LINEA)

		return final_diamond
	puts final_diamond
	end
	private 

	def generate_line_for_letters(letter, position)	
	(blank_spaces(position)  + draw_letters(letter,position) + blank_spaces(position))	
	end

	def letters_used
	('a'..@letter).to_a
	end

	def total_letters_quantity
	letters_used.size + 1		
	end	

	def blank_spaces(position)
	(SEPARADOR * (total_letters_quantity - position -1))	
	end

	def draw_letters(letter,position)
	return letter.upcase if position == 0 #clausula de guarda
	letter.upcase + (SEPARADOR * ((position * 2) - 1)) + letter.upcase	
	end

end
