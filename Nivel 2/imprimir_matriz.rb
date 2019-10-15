def imprimir_matriz(arr)
  cont1 = 0
  cont2 = 0
  b = []
  while cont1 < arr.length
    while cont2 < arr[cont1].length
      a = arr[cont1][cont2]
      unless (cont2 == arr[cont1].length - 1)
        b.append("#{a}|")
      else
        b.append("#{a}")
        puts "#{b.join}"
      end       
      cont2 += 1      
    end
    b.clear
    cont2 = 0
    cont1 += 1   
  end
end

arr = [[1,2,3], [1,2,3]]
imprimir_matriz(arr)