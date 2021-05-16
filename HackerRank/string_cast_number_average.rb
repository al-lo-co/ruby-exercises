# Your code here
def serial_average serial
  n2 = (serial[10..-1]).to_f
  n1 = (serial[4..8] ).to_f
  total = ((n1+n2)/2).round(2)
  total = serial[0..3] + total.to_s
end