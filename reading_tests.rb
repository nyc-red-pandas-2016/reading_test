def word_count(string)
  string.split(" ").length
end

def average_word_length(string)
  return nil if string == ""
  count_of_letters = string.gsub(/\s/, "").length
  count_of_letters.to_f/word_count(string)
end

def palindrome?(string)
  string == string.reverse
end

def vowels(string)
  string.split(" ").select { |word| word =~ /[aeiou]/ }
end

def start_with_c?(string)
  string.split(" ").all? { |word| word =~ /^[cC]/ }
end

def titlecase(string)
  string.split(" ").map { |word| word.capitalize }.join(" ")
end

def delete_last(string, num)
  num.times { string.chop! }
  string
end

def to_money(float)
  "$#{'%.2f' % float}"
end

def numeric?(string)
  string.to_f != 0.0
end

def mean(array)
  array.inject(:+).to_f/array.length
end

def super_compact(array)
  array.compact.flatten.select { |elm| elm.to_s != "" }
end

def mode(array)
  array.sort_by { |word| array.count(word) }[-1]
end

def symbolize(array)
  array.map { |elm| elm.to_sym }
end