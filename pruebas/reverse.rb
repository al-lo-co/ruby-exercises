require 'rspec'

def sentence_reverse str
=begin
  word = String.new
  array = Array.new

  str.each_char do |letter|
    if letter == " "
      array << word
      word = String.new
    else
      word << letter
    end
  end
  array << word
=end
  array = str.split
  array.reverse.join(" ")
end

describe "sentence reverser"  do 
  it 'reverses the word in a sentence' do 
    test_sentence = "backwards am i"
    expect(sentence_reverse(test_sentence)).to eq("i am backwards")
  end
end