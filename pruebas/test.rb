def unique_names(names1, names2)
  (names1 + names2).inject([]) do |arr, following|
    arr << following if !arr.any?{|word| word == following}
    arr
  end
end


names1 = ["Ava", "Emma", "Olivia"]
names2 = ["Olivia", "Sophia", "Emma"]
#puts unique_names(names1, names2)


def group_by_owners(files)
  hash = Hash.new
  files.each_pair do |key, value|
    if !hash[value.to_s].nil?
      if hash[value.to_s].class == Array 
        hash[value.to_s] << key
      else
        hash[value.to_s] = [hash[value.to_s], key]
      end
    else
      hash.store(value.to_s, [key])
    end
  end 
  hash 
end

files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}
#puts group_by_owners(files)

# param [Integer] a 
# param [Integer] b 
# param [Integer] c 
#
# @return [Array[Float]] 
#   An array of two elements containing both roots in any order
def find_roots(a, b, c)
  a = a.to_f
  b = b.to_f
  c = c.to_f
  ans1 = (-b + Math.sqrt((b**2) - (4*a*c)))/(2*a)
  ans2 = (-b - Math.sqrt((b**2) - (4*a*c)))/(2*a)
  [ans1, ans2]
end

puts find_roots(2, 10, 8)