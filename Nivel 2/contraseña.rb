def contraseña(contra)
	cad = []
	con = contra.downcase
	contador = 0
	while contador < contra.length
		c = con[contador]
		if c == " "
			
		elsif c == "a"
			cad.append("4")
		elsif c == "i"
			cad.append("1")
		elsif c == "e"
			cad.append("3")
		elsif c == "o"
			cad.append("0")
		else
			cad.append(c)
		end	
		contador += 1	
	end
	cad.join			
end

contra = "esta es una prueba"

puts contraseña(contra)