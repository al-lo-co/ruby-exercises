def change_date_format(dates)
  dates.map do |date|
    if /^(?<year>\d{4})\/(?<month>\d{2})\/(?<day>\d{2})$/ =~ date
      "#{year}#{month}#{day}" if month.to_i <= 12 && day.to_i <= 31
    elsif /^(?<day>\d{2})\/(?<month>\d{2})\/(?<year>\d{4})$/ =~ date
      "#{year}#{month}#{day}" if month.to_i <= 12 && day.to_i <= 31
    elsif /^(?<month>\d{2})\-(?<day>\d{2})\-(?<year>\d{4})$/ =~ date
      "#{year}#{month}#{day}" if month.to_i <= 12 && day.to_i <= 31
    end
  end.compact
end

#p change_date_format(["2010/03/30", "15/12/2016", "11-15-2012", "20130720"])

require 'json'

def sort_by_price_ascending(json_string)
  json_hash = JSON.parse(json_string)
  json_hash.sort!{|a,b| a['price'] == b['price'] ? a['name'] <=> b['name'] : a['price'] <=> b['price'] }
  json_hash.to_json
end


#puts sort_by_price_ascending('[{"name":"eggs","price":1},{"name":"coffee","price":9.99},{"name":"rice","price":4.04}]')


class CategoryTree
  attr_accessor :three
  def initialize()
    @three = {}
  end

  def add_category(category, parent)
    
    if parent.nil?
      @three[category] = [] 
    else
      raise ArgumentError if @three.has_key?(category) || !@three.has_key?(parent)  
      @three[parent] << category
      @three[category] = []
    end
  end

  def get_children(category)
    return @three[category]
  end

end

c = CategoryTree.new
c.add_category('A', nil)
c.add_category('B', 'A')
c.add_category('C', 'A')
#puts (c.get_children('A') || []).join(',')


def numbers_to_letters(string)
  convertion_table = ('A'..'Z').to_a
  words = string.split('+')
  words.map do |word|
    word.scan(/\d+/).map{|letter| convertion_table[letter.to_i - 1]}.join
  end.join(' ')
end

#puts numbers_to_letters('20 5 19 20+4 15 13 5')

def symbolic_to_octal(permission_string)
  codex = {'r' => 4, 'w' => 2, 'x' => 1, '-' => 0 }
  one = codex[permission_string[0]] + codex[permission_string[1]] + codex[permission_string[2]]
  two = codex[permission_string[3]] + codex[permission_string[4]] + codex[permission_string[5]]
  three = codex[permission_string[6]] + codex[permission_string[7]] + codex[permission_string[8]]   
  "#{one}#{two}#{three}".to_i
end

def symbolic_to_octal2(permission_string)
  codex = {'r' => 4, 'w' => 2, 'x' => 1, '-' => 0 }
  result = 0
  3.times do
    result *= 10
    result += codex[permission_string.slice!(0)]
    result += codex[permission_string.slice!(0)]
    result += codex[permission_string.slice!(0)]
  end
  result
end

def symbolic_to_octal3(permission_string)
  codex = {'r' => 4, 'w' => 2, 'x' => 1, '-' => 0 }
  result = 0
  permission_string.scan(/.../).each do |string|
    result *= 10
    result += codex[string.slice!(0)]
    result += codex[string.slice!(0)]
    result += codex[string.slice!(0)]
  end
  result
end
puts symbolic_to_octal3("rwxr-x-w-rwxr-x-w-")