def rango_numeros
  puts "Ingresa el límite inferior:"
  inf = gets.chomp.to_i
  puts "Ingresa el límite superior:"
  sup = gets.chomp.to_i

  for i in (inf..sup)
    puts "\n#{i}"
  end
end

rango_numeros