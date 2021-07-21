def z_x z, ar
  ar.inject do |value, next_value|
    value = next_value if ((z - next_value) > 0)
    value
  end
end

puts z_x 2, [1,4,5,9,10,12,25,26,29,40]