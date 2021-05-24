#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'aVeryBigSum' function below.
#
# The function is expected to return a LONG_INTEGER.
# The function accepts LONG_INTEGER_ARRAY ar as parameter.
#

def aVeryBigSum(ar)
    # Write your code here
    ar.inject(&:+)
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.strip.to_i

ar = gets.rstrip.split.map(&:to_i)

result = aVeryBigSum ar

fptr.write result
fptr.write "\n"

fptr.close()