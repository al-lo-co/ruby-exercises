def plusMinus(arr)
    # Write your code here
    data = arr.inject([0,0,0]){|ini, pos| pos > 0 ? ini[0] += 1 : pos < 0 ? ini[1] += 1 : ini[2] += 1; ini }
    data.each{|val| puts val.to_f/arr.size}
end

plusMinus([1,2,3,-1,-2,-3])