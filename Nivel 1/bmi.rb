
def weight
	puts "Ingresa tu peso:"
	weigth = gets.chomp.to_f
end

def height
	puts "Ingresa tu altura:"
	height = gets.chomp.to_f
end

def bmi(weigth, height)
  "Tu bmi es de #{(weigth/(height*height))}"
end


puts bmi(weigth, height)


