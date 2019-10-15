def reemplazar(arr)
  arrr = arr
  count = 0
  while count < arrr.length
    if arrr[count] == 1
      arrr[count] = 0
    elsif arrr[count] == 0
      arrr[count] = 1
    end
    count += 1
  end
  arrr
end

arr = [1,0,0,1,0,1]
puts reemplazar(arr)
