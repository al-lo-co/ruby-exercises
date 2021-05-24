def word_separator text
  count = 0
  val = ["", ""]
  text.each_line do |line|
      if line.strip.to_i == 0
          line.strip.each_char do |char|
              if count % 2 == 1
                  val[1] << char
              else
                  val[0] << char
              end
              count += 1
          end
          $stdout.puts val[0] + " " + val[1]
          count = 0
          val = ["", ""]
      end
  end
end