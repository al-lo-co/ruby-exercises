def weigth s, queries
  hash = {}
  s.downcase.each_char do |char|
    if hash[char.bytes[0]-96]
      hash[char.bytes[0]-96] += char.bytes[0]-96
    else
      hash[char.bytes[0]-96] = char.bytes[0]-96
    end
  end
  values = hash.values
  data = []
  queries.each do |query|
    if hash.has_value?(query)
      data << 'Yes'
    else
      data << 'No'
    end 
  end
  data
end

def weigth2 s, queries
  hash = {}
  s.downcase.each_char do |char|
    if hash[char.bytes[0]-96]
      hash[char.bytes[0]-96] += 1
    else
      hash[char.bytes[0]-96] = 1
    end
  end
  values = hash.values

  weights = {}
  hash.each do |data|
    (1..data[1]).each do |number|
      weights["#{data[0]}#{number}"] = number*data[0]
    end
  end

  data = []
  queries.each do |query|
    if weights.has_value?(query)
      data << 'Yes'
    else
      data << 'No'
    end 
  end
  data
  
end

puts weigth2('abccddd', [1,2,3])