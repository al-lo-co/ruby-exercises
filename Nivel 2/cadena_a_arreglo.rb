=begin
def cadena_a_arreglo(cha)
	contador = 0 
	arr = []
	arrr = []
	while contador < cha.length
		c = cha[contador]
		unless c == " "
			arr.append(c)
			if contador == cha.length - 1
				arrr.append(arr.join)
			end				
		else
			arrr.append(arr.join)
			arr.clear
		end
		contador += 1
	end
	arrr
end
=end

def cadena_a_arreglo(cha)
	cha.split(" ")
end

cha = "Hola mundo"
puts cadena_a_arreglo(cha).inspect