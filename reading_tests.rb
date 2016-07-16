def word_count(string)
  string.split(' ').length
end

def average_word_length(string)
  string.split(' ').join('').length.to_f / word_count(string) if string != ''
end

def palindrome?(string)
  return true if string == string.reverse
  false
end

def vowels(string)
  string.split(' ').select { |word| word.match(/[aeiou]/)}
end

p vowels("24 hour roadside resistance")
