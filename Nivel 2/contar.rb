def contar(arr, arg)
  count = 0
  arr.each do |a|
    if a == arg
      count += 1
    end
  end
  count
end

ar = [1,2,3,5,5]
puts contar(ar, 6)