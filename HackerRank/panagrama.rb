def pangrams s
  hash = {}
  s.downcase.each_char do |char|
    hash[char.bytes[0]-97] = true
  end

  puts hash.size
  if hash.size == 27
    "pangram"
  else
    "not pangram"
  end
end

puts pangrams("We promptly judged antique ivory buckles for the next prize")

puts  pangrams("qmExzBIJmdELxyOFWv LOCmefk TwPhargKSPEqSxzveiun")