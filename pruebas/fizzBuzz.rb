require 'rspec'

def hashed_fizz_buzz num
	the_hash = Hash.new
	1.upto(num).each do |count|
		if count % 3 == 0 && count % 5 == 0
			the_hash.store(count, "FizzBuzz")
		elsif count % 3 == 0 && count % 5 != 0
			the_hash.store(count, "Fizz")
		elsif count % 3 != 0 && count % 5 == 0
			the_hash.store(count, "Buzz")
		else
			the_hash.store(count, count)
		end			
	end
	the_hash 
end

describe 'Hashed FizzBuzz' do 
	it 'generates a fizz buzz hash' do
		final_hash = {
			1=>1, 2=>2, 3=>"Fizz", 4=>4, 5=>"Buzz", 6=>"Fizz", 7=>7, 8=>8, 9=>"Fizz", 10=>"Buzz", 11=>11, 12=>"Fizz", 13=>13, 14=>14, 15=> "FizzBuzz" 
		}

		expect(hashed_fizz_buzz 15).to eq(final_hash)
	end
end