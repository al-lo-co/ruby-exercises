def numeros_pares(arr)
  arrr = []
  arr.each do |a|
    if (a % 2) == 0
      arrr.append(a)
    end
  end
  arrr
end

arr = [120,876,934,43,17,21]

puts numeros_pares(arr)