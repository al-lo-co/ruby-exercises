def skip_animals(animals, skip)
  # Your code here
  #In this challenge, your task is to complete the skip_animals method that takes an animals array and a skip integer and returns an array of all elements except first skip number of items as shown in the example below. 
  ari = []
  animals.each_with_index{|ani, index| index >= skip ? ari << "#{index}:#{ani}" : ani }
  ari
end

print skip_animals ["lobo", "gato", "perro"], 0