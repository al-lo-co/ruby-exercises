def buscar(matriz, arg)
	cont1 = 0
	cont2 = 0
	pos = []
	while cont1 < matriz.length
		while cont2 < matriz[cont1].length
			a = matriz[cont1][cont2]
			if a == arg 
				pos.append(cont1)
				pos.append(cont2)
			end
			cont2 += 1
		end
		cont2 = 0
		cont1 += 1
	end
	if pos.length == 0
		pos.append("nil")
	end
	pos			
end

matriz = [[1,2],["a","b"]]

puts buscar(matriz, "c")