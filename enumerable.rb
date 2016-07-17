def select_arr(arr)
  # select and return all odd numbers from the Array variable `arr`
    arr.select {|num| num.odd?}
end

def reject_arr(arr)
  # reject all elements which are divisible by 3
    arr.reject {|num| num % 3 == 0}
end

def delete_arr(arr)
  # delete all negative elements
    arr.delete_if {|num| num < 0}
end

def keep_arr(arr)
  # keep all non negative elements ( >= 0)
    arr.keep_if {|num| num >= 0}
end


def func_any(hash)
    # Check and return if any key object within the hash is of the type Integer
  hash.any? { |key, value| key.is_a?(Integer) }
end

def func_all(hash)
    # Check and return if all the values within the hash are Integers and are < 10
  hash.all? { |key, value| value.is_a?(Integer) && value < 10 }
end

def func_none(hash)
  hash.none? { |key, value| value.nil? }
    # Check and return if none of the values within the hash are nil
end

def func_find(hash)
  hash.find do |key, value|
    (key.is_a?(Integer) && value.is_a?(Integer) && 20 > value) || (key.is_a?(String) && value.is_a?(String) && value.match(/^[a]/))
  end
    # Check and return the first object that satisfies the property
    # [key, value] pair where the key and value are both Integers and the value is < 20
    # or [key, value] pair where the key is a String and the value is a String starting
    # with the character `a`
end
