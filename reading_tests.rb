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
  string.split(' ').select { |word| word.match(/[aeiou]/) }
end

def start_with_c?(string)
  string.split(' ').all? { |word| word.match(/^[c]/) }
end

def titlecase(string)
  string.split(' ').map { |word| word.capitalize }.join(' ')
end

def delete_last(string, n)
  string.replace (string[0...-n])
end

def to_money(float)
  money_format = '$' + float.round(2).to_s
 return money_format + '0' if money_format[-1] == '0'
 money_format
end

def numeric?(string)
  return true if string.to_f != 0.0
  return false if string.to_f == 0.0
end

def mean(array)
  array.reduce(:+).to_f / array.length
end

def super_compact(array)
  array.reject { |elm| elm.to_s == '' || elm == [] }
end

def mode(array)
  array.max_by { |elm| array.count(elm) }
end

def symbolize(array)
  array.map { |elm| elm.to_sym }
end