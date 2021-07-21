def miniMaxSum(arr)
  # Write your code here
  resul = []
  arr.each_with_index do |data, index|
      resul << arr.map.with_index{|value, m_index| index == m_index ? 0 : value}.inject(&:+)
  end
  resul = resul.sort
  puts "#{resul[0]} #{resul[4]}"
end

miniMaxSum([1,2,3,4,5])