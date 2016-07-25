def word_count(string)
  split_string = string.split(" ")
  return split_string.length
end

def average_word_length(string)
  return nil if string == ""
  sum = 0
  split_string = string.split(" ")

  split_string.each do |word|
    sum += word.length
  end
  return (sum.to_f/split_string.length.to_f).to_f
end

def palindrome?(string)
  reversed = string.reverse
  return true if reversed == string else false
end

def vowels(string)
  vowel_words = []
  vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
  split_string = string.split(" ")
  split_string.each do |word|
    vowels.each do |vowel|
      if(word.include?(vowel))
        vowel_words << word
        break
      end
     end
    end
   return vowel_words
end

def start_with_c?(string)
  split_string = string.split(" ")
  count = 0
  split_string.each do |word|
    if(word[0] == 'c')
      count+=1
    end
  end
  return true if split_string.length == count else false
end

def titlecase(string)
  split_string = string.split(" ")
  split_string.map! do |word|
    word.capitalize
  end
  return split_string.join(" ")
end

def delete_last(string, num)
   num.times do
   string.chop!
   end
   return string
end

def to_money(decimal)
   "$#{'%.2f' % decimal}"
end

def numeric?(string)
   if string.to_f == 0
     false
   elsif(string.to_f)
     true
   end
end

def mean(arr)
  sum = 0
  arr.each {|element| sum += element}
  return (sum.to_f/arr.length.to_f).to_f
end

def super_compact(arr)
  arr.delete(nil)
  takeaway = []
  arr.each do |element|
    if(element.empty?)
      takeaway << element
    end
    arr-=takeaway
  end
  return arr
end

def mode(arr)
  max = 0
  word = ""
  arr.each do |element|
    if(arr.count(element) > max)
      max = arr.count(element)
      word = element
    end
  end
  return word
end

def symbolize(arr)
  arr.map! do |element|
    element.to_sym
  end
  return arr
end