def process_text text
  text.map{|str| str.chomp(separator=$/).strip}.join(" ")
end