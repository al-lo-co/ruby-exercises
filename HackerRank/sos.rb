def marsExploration(s)
  station = 1
  errors = 0
  s.each_char do |char|
    case station
    when 3
      unless char == "S"
        errors += 1
      end
      station = 1
    when 2
      unless char == "O"
        errors += 1
      end
      station = 3
    when 1
      unless char == "S"
        errors += 1
      end
      station = 2
    end
  end
  errors
end

puts marsExploration("SOSSSSSSOSSKS")