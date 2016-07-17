require_relative '../enumerable.rb'

describe 'select_arr' do
  it 'returns all odd numbers from the array' do
    expect(select_arr([1,2,3,4,5])).to match_array [1,3,5]
  end
end

describe 'reject_arr' do
  it 'returns all numbers in array that are not divisible by 3' do
    expect(reject_arr([1,2,3,5,6,7,9])).to match_array [1,2,5,7]
  end
end

describe 'delete_arr' do
  it 'deletes all negative elements' do
    expect(delete_arr([-3,-2,-1,0,5,7,8])). to match_array [0,5,7,8]
  end
end

describe 'keep_arr' do
  it 'keeps all non-negative elements' do
    expect(keep_arr([-3,-2,-1,0,5,7,8])). to match_array [0,5,7,8]
  end
end

describe 'func_any' do
  it 'returns the first key that is an integer' do
    expect(func_any( { "a" => "blue", "b" => 6, 4 => true, false => :i })).to eq 4
  end
end

describe 'func_all' do
  it 'returns true if all values in the hash are Integers and are greater than 10' do
    expect(func_all({ "a" => 11, "b" => 90, "c" => 80 })). to be true
  end

  it 'returns false if any of the values in the hash are not Integers greater than 10' do
    expect(func_all({ "a" => 11, 90 => "b", false => 80 })).to be false
  end
end

describe 'func_none' do
  it 'returns true if none of the values in the hash are nil' do
    expect(func_none({ "a" => 11, 90 => "b", false => 80 })).to be true
  end

  it 'returns false if any of the values in the hash are nil' do
    expect(func_none({ "a" => 11, 90 => nil, false => 80 })).to be false
  end
end

describe 'func_find' do
  it 'returns the first object for which the key and value are both Integers and greater than 20' do
    expect(func_find({ 30 => "b", "a" => 50, 23 => 56, false => true })). to match_array [23, 56]
  end

  it 'returns the first object for which the key and value are both Strings and the value begins with the character "a"' do
    expect(func_find({ "blue" => "b", true => "apple", "a" => "aardvark", false => true })).to match_array ["a", "aardvark"]
  end

  it 'only returns the first object that meets either criteria if both are met' do
    expect(func_find({ "blue" => "b", 23 => 56, "a" => "apple", false => true })).to match_array [23, 56]
  end

  it 'returns nil if no objects meet the criteria' do
    expect(func_find({ "blue" => "b", "apple" => 56, true => "aardvark" })).to be nil
  end
end