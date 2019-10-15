def posiciones_nume_1(arr)
  arrr = []
  count = 0
  while count < arr.length
    if arr[count] == 1
      arrr.append(count)      
    end
    count += 1
  end
  arrr
end

arr = [1,2,3,1,2,1]

puts posiciones_nume_1(arr)