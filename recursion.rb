# Define a recursive function that returns true if a string is a palindrome and false otherwise.
def palindrome?(string)
	return true if string.length <= 1
	if string[0].downcase == string[-1].downcase
		palindrome?(string[1...-1])
	else
		return false
	end
end

string= "Racecar"
word= "HellO"
p palindrome?(string)
p palindrome?(word)

# Define a recursive function that flattens an array. The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4] and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].

def flatten(array)
	return array if array == array.flatten!
	array.flatten!(1)
end

arr_1=[[1, 2], [3, 4]]
arr_2=[[1, [8, 9]], [3, 4]]
p array= flatten(arr_1)
p array= flatten(arr_2)