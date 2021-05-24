def convert_temp(temp, **scales)
    val = temp.to_i
    if scales[:output_scale]
        case scales[:input_scale]
            when "celsius"
                case scales[:output_scale]
                    when "fahrenheit"
                        val = (val * 8/5) + 32
                    when "kelvin"
                        val = val + 273.15
                end
            when "fahrenheit"
                case scales[:output_scale]
                    when "celsius"
                        val = (val - 32) * 5/9
                    when "kelvin"
                        val = ((val - 32) * 5/9) + 273.15
                end
            when "kelvin"
                case scales[:output_scale]
                    when "fahrenheit"
                        val = ((val - 273.15) * 9/5) + 32
                    when "celsius"
                        val = val - 273.15
                end
        else
            val
        end
    end
    val.to_f.round(2)
end 

puts convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin')