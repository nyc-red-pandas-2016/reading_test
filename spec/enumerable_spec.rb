require_relative '../enumerable.rb'

describe "select_arr" do
  it "selects and returns all odd numbers from an array" do
    arr = [1, 2, 3, 4, 5, 6]
    expect(select_arr(arr)).to eq [1, 3, 5]
  end
end

describe "reject_arr" do
  it "rejects all elements which are divisible by three from an array" do
    arr = [1, 2, 3, 4, 5, 6]
    expect(reject_arr(arr)).to eq [1, 2, 4, 5]
  end
end

describe "delete_arr" do
  it "deletes all negative elements from an array" do
    arr = [-7, -3, 5, 1, -2]
    expect(delete_arr(arr)).to eq [5, 1]
  end
end

describe "keep_arr" do
  it "keeps all non-negative elements in an array" do
    arr = [-7, -3, 5, 1, -2]
    expect(keep_arr(arr)).to eq [5, 1]
  end
end

describe "func_any" do
  it "returns true if any keys in a hash are integers" do
    hash = {'three' => 5, :one => 'nine', 7 => 'seven'}
    expect(func_any(hash)).to be true
  end

  it "returns false if no keys in a hash are integers" do
    hash = {'three' => 5, :one => 'nine'}
    expect(func_any(hash)).to be false
  end
end

describe "func_all" do
  it "returns true if all values in a hash are integers and are less than 10" do
    hash = {'three' => 5, :one => 9, 7 => 7}
    expect(func_all(hash)).to be true
  end

  it "returns false if any values in a hash are not integers or are not less than 10" do
    hash = {'three' => 5, :one => 'nine', 7 => 'seven'}
    expect(func_all(hash)).to be false
  end
end

describe "func_none" do
  it "returns true if none of the values in a hash are nil" do
    hash = {'three' => 5, :one => 'nine', 7 => 'seven'}
    expect(func_none(hash)).to be true
  end

  it "returns false if any of the values in a hash are nil" do
    hash = {'three' => nil, :one => 'nine', 7 => 'seven'}
    expect(func_none(hash)).to be false
  end

end

describe "func_find" do
  it "returns the first key value pair where the key and value are both Integers and the value is < 20 or [key, value] pair where the key is a String and the value is a String starting with the character `a`" do
    hash = {7 => 18, 7 => 49, 'something' => 'something else'}
    expect(func_find(hash)).to match([7, 18])
  end

  it "returns the first key value pair where the key and value are both Integers and the value is < 20 or [key, value] pair where the key is a String and the value is a String starting with the character `a`" do
    hash = {'something' => 'something else', 'something else' => 'alligator', 7 => 18, 7 => 49}
    expect(func_find(hash)).to match(['something else', 'alligator'])
  end

end