def word_count(string)
	array= string.split(" ")
	return array.length
end

def average_word_length(string)
	number_of_words= word_count(string)
	return nil if number_of_words == 0
	array= string.split(" ")
	sum= 0
	array.each do |element| 
		sum+= element.length
	end
	return sum.to_f / number_of_words
end

def palindrome?(string)
	return true if string.reverse == string
	false
end

def vowels(string)
	array=string.split(" ")
	return_array= []
	array.each do |element| 
		if element.include?("a") || element.include?("e") || element.include?("i") || element.include?("o") || element.include?("u") 
			return_array << element
		end
	end
	return_array
end

def start_with_c?(string)
	array=string.split(" ")
	array.each do |element|
		return false if element[0] != "c"
	end
	true
end

def titlecase(string)
	array=string.split(" ")
	array.map! do |element|
		element.capitalize
	end
	array.join(" ")
end

def delete_last(string,int)
	int.times do
		string.chop!
	end
	string
end

def to_money(float)
	money=float.round(2)
	if money== money.to_i
		return "$#{money}0"
	else
		return "$#{money}"
	end
end

def numeric?(float)
	return true if float.is_a? Numeric
	false
end

def mean(array)
	number= array.length
	sum= array.inject(:+)
	return sum.to_f/ number
end

def super_compact(array)
	array.compact!
	array.reject! { |element| element == "" || element == [] }
end

def mode(array)
	most_frequent= array.uniq.max_by{ |i| array.count( i ) }
end

def symbolize(array)
	array.map! do |element|
		element.to_sym
	end
end
