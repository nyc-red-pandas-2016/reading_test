# Define a recursive function that returns true if a string is a palindrome and false otherwise.

def recursive_palindrome?(string)
  string.length <= 1 || string[0] == string[-1] && recursive_palindrome?(string[1..-2])
end

# Define a recursive function that flattens an array. The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4] and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].

# I got stuck on this challenge for a long time and ended up using this resource to help: http://www.emilydowdle.com/blog/recursively-replicating-rubys-flatten-method

def recursive_array_flattener(original_array, final_array = [])
  original_array.each do |elm|
    if elm.class == Array
      recursive_array_flattener(elm, final_array)
    else
      final_array << elm
    end
  end
  final_array
end