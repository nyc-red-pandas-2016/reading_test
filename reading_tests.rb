require 'pry'

def word_count(string)
  string.split.length
end

def average_word_length(string)
  return nil if string == ""
    word_length = 0.0
    string.split(" ").each {|word| word_length += word.length.to_f }
    word_length / word_count(string)
end


def palindrome?(string)
  return true if string.reverse == string
  return false if string.reverse != string
end

def vowels(str)
  vowel_array = []
  str.split(" ").map {|word| vowel_array << word.match(/[aeiou]/)}
    # if word.include?(/\D+/) == true
      # vowel_array << word.to_s
end

def start_with_c?(str)
  return false if str.split.map{|word| !word.start_with?("c")}.join(' ')
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
