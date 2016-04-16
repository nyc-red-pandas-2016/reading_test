require_relative '../test.rb'

describe "word_count" do
  it "returns number of words in a string" do
    string = "laughter, it's free"
    expect(word_count(string)).to eq 3
  end

  it "returns 0 for empty string" do
    expect(word_count("")).to eq 0
  end
end

describe "average_word_length" do
  it "returns average word length" do
    string = "i wish that i was cool"
    expect(average_word_length(string)).to be_within(0.01).of 2.83
  end

  it "returns nil for empty string" do
    expect(average_word_length("")).to be_nil
  end
end

describe "palindrome?" do
  it "returns true if string is a palindrome" do
    expect(palindrome?("racecar")).to be true
  end

  it "returns false if string is not a palindrome" do
    expect(palindrome?("poochie")).to be false
  end
end


describe "vowels" do
  it "returns array of words with vowels" do
    str = "24 hour roadside resistance"
    expected = %w|hour roadside resistance|
    expect(vowels(str)).to eq expected
  end
end

describe "start_with_c?" do
  it "returns true if all words begin with 'c'" do
    str = "cool captain crunch cap"
    expect(start_with_c?(str)).to be true
  end

  it "returns false if all words don't begin with 'c'" do
    str = "crazy cat dude"
    expect(start_with_c?(str)).to be false
  end
end


describe "titlecase" do
  it "capitalizes the first letter of every word" do
    str = "the grand Gala party"
    expected = "The Grand Gala Party"
    expect(titlecase(str)).to eq expected
  end
end

describe "delete_last" do
  it "removes last n elements from string" do
    str = "hello"
    expect(delete_last(str, 2)).to eq "hel"
  end

  it "mutates self in place" do
    str = "blah"
    expect(delete_last(str, 1)).to equal str.replace "bla"
  end
end


describe "to_money" do
  it "converts float to money format" do
    expect(to_money(12.991)).to eq '$12.99'
  end

  it "correctly rounds zeros" do
    expect(to_money(9.0)).to eq '$9.00'
  end
end

describe "numeric?" do
  it "returns true if string can be converted to Float" do
    expect(numeric?(12.48)).to be true
  end

  it "returns false if string cannot be converted to Float" do
    expect(numeric?("blah")).to be false
  end
end



describe "mean" do
  it "calculates average" do
    arr = [1, 2, 3, 4]
    expect(mean(arr)).to eq 2.5
  end
end


describe "super_compact" do
  it "removes nil and empty elements" do
    arr = [:bob, "", nil, [], "joe"]
    expected = [:bob, "joe"]
    expect(super_compact(arr)).to eq expected
  end
end



describe "mode" do
  it "returns most common element" do
    arr = %w|a b dog a b b|
    expect(mode(arr)).to eq "b"
  end
end


describe "symbolize" do
  it "creates an array of symbols" do
    arr = %w|b c d c a|
    expected = [:b, :c, :d, :c, :a]
    expect(symbolize(arr)).to eq expected
  end
end
