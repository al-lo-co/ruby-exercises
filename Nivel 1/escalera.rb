def escalera
  puts "Ingresa un número:"
  num = gets.chomp.to_i
  puts "Escoja 1 si la quiere incremental o 0 si la quiere al revez"
  op = gets.chomp.to_i
  
  if op == 1
    num.times do |n|
      puts "#" * (n+1)
    end
  else
    for i in num..0
      puts "#" * (i+1)
    end
  end
end

escalera