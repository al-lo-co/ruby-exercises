def imprime_lista
  puts "Ingresa el número de personas:"
  num = gets.chomp.to_i
  list = []
  for i in 0...num 
    puts "Persona #{i}"
    p_name = gets.chomp.to_s
    list.push(p_name)
  end

  for i in 0...num 
    puts "\nEl nombre en la posición #{i} es #{list[i]}"
  end
end

imprime_lista