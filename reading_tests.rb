def word_count(string)
  string.split.length
end

def average_word_length(string)
    # string.split(' ').join('').length.to_f / word_count(string) if string != ''
  if string == ""
    return nil
  else
    string.split(" ") {|word| word.length.to_f / word_count(string)}
  end
  
end

def palindrome?(string)
  return true if string.reverse == string
  return false if string.reverse != string
end

def vowels(str)
  # vowel_array = []
  # str.split(" ").each do |word|
  #   # if word.include?(/\D+/) == true
  #     vowel_array << word.to_s
  #   end
  # end
end

def start_with_c?(str)
  # str.split.map{|word| word.include?("c")}.join(' ')
end

def titlecase(str)
  str.split.map{|word| word.capitalize}.join(' ')
end

def delete_last(str, n)
  str.slice!(0...-n)
end

def to_money(num)
  num.round(2)
end