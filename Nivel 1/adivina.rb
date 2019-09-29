def adivina
  a = 0
  num = rand(1...10)
  puts "Adivina el número que estoy pensando:"
  adv = gets.chomp.to_i
  while a == 0
    if adv == num
      a = 1
     puts "\nFelicitaciones, ese era!"
    else
      puts "\nLo siento, intenta nuevamente!"
      adv = gets.chomp.to_i
    end
  end
end

adivina