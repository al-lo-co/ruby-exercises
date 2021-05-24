def hash_data data
    the_hash = {}
 
    data.each_line do |val|
        if val.strip.to_i != 0
            @set_quantity = val.strip.to_i
            @set_count = 0
        elsif @set_quantity > @set_count
            data_values = val.strip.split
            the_hash[data_values[0].to_sym] = data_values[1]
            @set_count += 1
        else
            if the_hash[val.strip.to_sym].nil?
                puts "Not found"
            else
                puts "#{val.strip}=#{the_hash[val.strip.to_sym]}"
            end
        end        
    end
end

data = "3
sam 99912222
tom 11122222
harry 12299933
sam
edward
harry"
hash_data data