def posiciones_pares(arr)
  marca = 0
  arrr = []
  arr.each do |a|
    if marca == 0
      arrr.append(a)
      marca = 1
    elsif marca == 1
      marca = 0
    end
  end
  arrr
end

arr=[1,2,3,4,5,6]
puts posiciones_pares(arr)