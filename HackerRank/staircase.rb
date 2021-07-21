def staircase(n)
  # Write your code here
  (0..(n-1)).each do |val| 
      str = ""
      (0..(n-2-val)).each{|space| str << " "}
      (0..val).each{|space| str << "#"}
      puts str
  end 
end

staircase(5)