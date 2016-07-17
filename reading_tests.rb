def word_count(str)
  words = str.split(' ')
  words.length
end

def average_word_length(str)
  return nil if (word_count(str) == 0)
  words = str.split(' ')
  total_letters = 0.0
  words.each { |word| total_letters += word.length}
  total_letters / word_count(str)
end

def palindrome?(str)
  str == str.reverse
end

def vowels(str)
  words = str.split(' ')
  words_with_vowels = []
  words.each { |word| words_with_vowels << word if has_vowel?(word) }
  words_with_vowels
end

def has_vowel?(str)
  ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'].each { |vowel| return true if str.include?(vowel)}
  false
end

def start_with_c?(str)
  words = str.split(' ')
  words.each { |word| return false if !word.start_with?('c') }
  true
end

def titlecase(str)
  words = str.split(' ')
  words.map { |word| word.capitalize }.join(' ')
end