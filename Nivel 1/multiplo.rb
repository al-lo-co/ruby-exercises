def multiplo
  puts "Ingresa el número:"
  num = gets.chomp.to_f
  if num % 5 == 0
    "\nSi, el número #{num} es múltiplo de 5"
  else
    "\nNo, el número #{num} no es múltiplo de 5"
  end
end

puts multiplo