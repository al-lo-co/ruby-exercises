def hash(arr)
	h = {} #creación de hash
	arr.each_with_index do |a,i|
		h[i] = a
	end	
	Hash[*h]
end

arr = [5,6,7,8,4,3,5,7,84]
print hash(arr)