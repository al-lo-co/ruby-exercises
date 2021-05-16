def buscar(arr, num)
	pos = -1
	contador = 0
	while contador < arr.length
		if arr[contador] == num
			pos = contador
		else
		end
		contador += 1
	end
	pos
end

def buscar2(arr, num)
	b = nil
	arr.each_with_index do |a, index|
		if a == num
			b = index
		end
	end
	b
end


arr = [1,2,3,'a',5]

print buscar(arr, "a")

print buscar2(arr, "a")