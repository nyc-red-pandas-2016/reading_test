def word_count(string)
	if string != "" 
		string_words = string.split(' ')
		num_of_words = string_words.length 
		num_of_words
	else
		return 0
	end
end

def average_word_length(string)
	if string != ""
		string_words = string.split(' ')
		length_of_each_word = []
			string_words.each do |word| 
				length_of_each_word << word.length
			end
		sum = length_of_each_word.inject(:+)
		average = (sum.to_f / string_words.length)
		average
	else
		nil
	end
end

def palindrome?(string)
	if string == string.reverse
		true
	else
		false
	end
end

# vowels method doesnt work uggghhhh
def vowels(str)
str_words = str.split(' ')
words_with_vowels = []
	str_words.each do |word|
		word.include?("a") || word.include?("e") || word.include?("i") || word.include?("o") || word.include?("u")
		words_with_vowels << word
	end
	words_with_vowels
end

def numeric?(string)
	if string.to_i != 0
		true
	else
		false
	end
end

def mean(arr)
	sum = arr.inject(:+)
	average = (sum.to_f / arr.length)
end

def symbolize(arr)
	arr.map { |elem| elem.to_sym }
end