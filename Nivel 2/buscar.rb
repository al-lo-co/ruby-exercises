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

arr = [1,2,3,"a",5]

print buscar(arr, "a")