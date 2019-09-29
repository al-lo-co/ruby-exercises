def posibilities
  puts "en que año naciste?"
  t = Time.now.year.to_i
  year_born = gets.chomp.to_i
  age = t - year_born
  if age < 0
    "\nImposible! Aún no has nacido"
  elsif  age > 120
    "\nImposible! Nadie tiene esa edad"
  elsif age == 1
    "\nTienes 1 año"
  else
    "\nTienes #{age} años"
  end
end

puts posibilities