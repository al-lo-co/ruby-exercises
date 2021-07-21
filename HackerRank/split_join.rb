def timeConversion(s)
  # Write your code here
  data = s.split(':')
  if data.last[-2] == "P" && !(data.first == '12')
      data[0] = (data.first.to_i + 12).to_s
  elsif data.last[-2] == "A" && data.first == "12"
      data[0] = '00'
  end
  data[2] = data[2].split('A')[0]
  data[2] = data[2].split('P')[0]
  data.join(':')
end

puts timeConversion("12:05:45PM")