def birthdayCakeCandles(candles)
  # Write your code here
  count = 1
  (0..candles.size).each do |index|
      ca = candles.sort.reverse! 
      if ca[index] == ca[index+1]
          count += 1
      else
          return count
      end
  end
  count
end


def birthdayCakeCandle(candles)
    count = 0
    value = 0
    candles.each do |data|
        if data > value
            value = data
            count = 1
        elsif data == value
            count += 1
        end
    end
    count
end

puts birthdayCakeCandle([3,2,1,3])

#puts birthdayCakeCandles([3,2,1,3])