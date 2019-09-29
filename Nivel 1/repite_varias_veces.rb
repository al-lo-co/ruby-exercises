def repiteVariasVeces
	puts "Escribe una frase:"
	frase = gets.chomp.to_s
	puts "Ingresa un número:"
	num = gets.chomp.to_i
	num.times do
		puts frase
	end
end

repiteVariasVeces