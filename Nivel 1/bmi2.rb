def weigth
  puts "Ingresa tu peso:"
  weigth = gets.chomp.to_f
end

def height
  puts "Ingresa tu altura:"
  height = gets.chomp.to_f
end

def bmi(weigth, height)
  weigth/(height*height)
end

def bmi2
  the_bmi = bmi(weigth, height)
  if  the_bmi < 18.5
    "\nBajo de peso"
  elsif 18.5 < the_bmi && the_bmi < 24.9
    "\nNormal"
  elsif 25 < the_bmi && the_bmi < 29.9
    "\nSobrepeso"
  elsif 30 < the_bmi
    "\nObeso"
  end
      
end

puts bmi2