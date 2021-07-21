def hackerrankInString s
  str = "hackerrank"
  count = 0
  s.each_char do |char|
    if char == str[count]
      count += 1
    end
  end
  if count == str.size
    "YES"
  else
    "NO"
  end
end

puts hackerrankInString "hackerrrsnk"