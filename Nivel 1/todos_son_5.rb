def todos_son_5(arr)
  b = true
  if arr.empty?
    b = false
  end
  arr.each do |a|
    if a != 5
      b = false
      break
    end
  end
  b
end

puts todos_son_5([5, 5, 5]) # true
puts todos_son_5([5, 5, 5, 5, 5, 5]) # true
puts todos_son_5([5, 4, 5]) # false
puts todos_son_5([]) # false
puts todos_son_5([5, "5", 5]) # false
