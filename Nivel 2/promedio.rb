def promedio(arr)
	unless arr.length == 0
		promedio = 0
		arr.each do |a|
			promedio += a
		end
		Float(promedio)/arr.length
	end
end

arr = [2,2,3,3]

puts promedio(arr)