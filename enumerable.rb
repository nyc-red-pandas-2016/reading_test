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
    hash.keys.find { |key| key.is_a?(Integer) }
end

def func_all(hash)
    # Check and return if all the values within the hash are Integers and are < 10
    hash.values.all? { |value| value.is_a?(Integer) && value > 10 }
end

def func_none(hash)
    # Check and return if none of the values within the hash are nil
    hash.values.none? { |value| value == nil }
end

def func_find(hash)
    # Check and return the first object that satisfies the property
    # [key, value] pair where the key and value are both Integers and the value is < 20
    # or [key, value] pair where the key is a String and the value is a String starting
    # with the character `a`
    hash.find do |key, value|
      (key.is_a?(Integer) && value.is_a?(Integer) && key > 20 && value > 20) || (key.is_a?(String) && value.is_a?(String) && value =~ /^a/)
    end
end