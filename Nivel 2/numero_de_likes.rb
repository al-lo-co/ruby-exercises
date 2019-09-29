def numero_de_likes(num)
  count = 0
  a = []
  num.digits.each do |c|
    count += 1
    if count > 3
      a.push(c)
    end
  end
  "#{a.join.reverse}.#{num.digits[2]}K"
end

puts numero_de_likes(10800)