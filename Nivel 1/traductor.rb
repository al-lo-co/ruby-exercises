def traductor
  puts "Escribe la palabra a traducir:"
  word = gets.chomp.to_s
  palabras = {uno: 'one', dos: 'two', tres: 'three', cuatro: 'four', cinco: 'five'}
  5.times do |i|
    if word == palabras.keys[i].to_s
      puts "\n#{palabras.values[i].to_s}"
    end
  end
end

traductor