# Define a recursive function that returns true if a string is a palindrome and false otherwise.
def palindrome?(str)
  palindrome_helper(str, 0, str.length-1)
end

def palindrome_helper(str, first, last)
  return true if first == last || first-1 == last
  if str[first] == str[last]
    return palindrome_helper(str, first+1, last-1)
  end
  false
end

# Define a recursive function that flattens an array. The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4] and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].

