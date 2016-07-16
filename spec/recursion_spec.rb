require_relative '../recursion.rb'

describe 'palindrome_recursive' do
  it 'returns true if the word is a palindrome' do
    expect(palindrome_recursive("thisisapalindromemordnilapasisiht")).to be true
  end

  it 'returns false if the word is not a palindrome' do
    expect(palindrome_recursive("tiger")).to be false
  end
end

describe 'flatten_recursive' do
  it 'flattens a two-dimensional array into a one-dimensional array' do
    expect(flatten_recursive([[1,2],[3,4]])).to match_array [1,2,3,4]
  end

  it 'flattens an array with over two dimensions into a one-dimensional array' do
    expect(flatten_recursive([[1, [8,9]], [3,4]])).to match_array [1,8,9,3,4]
  end
end