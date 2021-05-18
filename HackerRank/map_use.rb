def rot13(secret_messages)
  # your code here
    ary = []
    hash_letters = {a: "n", b:"o", c:"p", d:"q", e:"r", f:"s", g:"t", h:"u", i:"v", j: "w", k:"x", l:"y", m:"z"}
    secret_messages.first.each_char do |char|
        if char != " "
            if char.bytes.first <= 109
                ary << hash_letters[char.to_sym]
            else
                ary << hash_letters.key(char).to_s
            end
        else
            ary << " "
        end
    end
    ary
end

def rot13_arrays(secret_messages)
  # your code here
    secret_messages.map do |secret_messages_word|
        ary = ""
        hash_letters = {a: "n", b:"o", c:"p", d:"q", e:"r", f:"s", g:"t", h:"u", i:"v", j: "w", k:"x", l:"y", m:"z"}
        secret_messages_word.each_char do |char|
            char = char.downcase
            if char != " "
                if char.bytes.first <= 109
                    ary << hash_letters[char.to_sym]
                else
                    ary << hash_letters.key(char).to_s
                end
            else
                ary << " "
            end
        end
        ary
    end
end

print rot13 ["why did the chicken cross the road?"]