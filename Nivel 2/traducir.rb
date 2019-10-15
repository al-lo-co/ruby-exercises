def traducir(string)
	dict = {"hola" => "hello", "mundo" => "world", "personas" => "people"}
	resp = []
	stri = string.split(" ")
	cont = false
	stri.each do |palabra|
		dict.keys.each do |diccionario|
			if palabra == diccionario
				resp.append(dict[diccionario])
				cont = true
			end
		end
		if cont == false
			resp.append(palabra)
		end
		cont = false
	end
	resp.join(" ")
end

string = "hola personas del mundo "
puts traducir(string)
