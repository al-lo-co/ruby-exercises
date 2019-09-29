def mayor_que_diez
  puts "Ingresa un número:"
  num = gets.chomp.to_i
  if num <= 10
    "El número es menor o igual a 10"
  else
    "El número es mayor a 10"
  end
end

puts mayor_que_diez