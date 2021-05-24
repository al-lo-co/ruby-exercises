require 'json'
require 'stringio'

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
# 
#For elements *0*, Bob is awarded a point because a[0] .
#For the equal elements a[1] and b[1], no points are earned.
#Finally, for elements 2, a[2] > b[2] so Alice receives a point.


def compareTriplets(a, b)
    # Write your code here
    score = [0,0]
    a.each_with_index do |val, index| 
        if val > b[index]
            score[0] += 1
        elsif val < b[index]
            score[1] += 1
        end
    end
    score
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()