# Define a recursive function that returns true if a string is a palindrome and false otherwise.

def palindrome_recursive(string)
  return true if string.length == 1 || string.length == 0
  return false if string[0] != string[-1]
  palindrome_recursive(string[1..-2])
end

# Define a recursive function that flattens an array. The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4] and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].

# Base Case is array with no sub_arrays

def flatten_recursive(array, flat_array=[])
  array.each do |elm|
    if elm.is_a?(Array)
      flatten_recursive(elm, flat_array)
    else
      flat_array << elm
    end
  end
  flat_array
end
