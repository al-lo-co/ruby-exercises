
def generaciones
  puts "Ingresa tu año de nacimiento:"
  born_year = gets.chomp.to_i
  age = Time.now.year.to_i - born_year

  if born_year < 1945
    "\nGran generación"  
  elsif born_year > 1945 && born_year <= 1964
    "\nBaby boomer" 
  elsif born_year > 1965 && born_year <= 1981 
    "\nX" 
  elsif born_year > 1982 && born_year <= 1994
    "\nMillenial" 
  elsif  born_year > 1995
    "\nZ" 
  end

end

puts generaciones