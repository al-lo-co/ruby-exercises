def fibonacci n
	ar = [0,1]
	if n == 1
		ar[0]
	elsif n == 2 || n == 3
		ar[1]
	else
		(n-2).times do 
			ar.push(ar[-2] + ar[-1])			
		end
		ar[n-1]
	end
	ar
end


def fibo2 num
	(1..num).inject([0, 1]){|fib| fib << fib.last(2).inject(:+)}
end
 puts fibonacci 6
puts fibo2 6