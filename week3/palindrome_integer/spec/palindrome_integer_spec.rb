

require_relative("../lib/palindrome_integer.rb")

describe("#reverse_number") do 
  it("splits, reverses, then joins number") do
    expect(reverse_number(15732)).to eq(23751)
    expect(reverse_number(1337)).to eq(7331)
    expect(reverse_number(123454321)).to eq(123454321)
  end
end

describe("#is_palindrome") do
  it("checks to if reverse == input") do
    expect(is_palindrome(15732)).to eq(false)
    expect(is_palindrome(1332)).to eq(false)
    expect(is_palindrome(9449)).to eq(true)
    expect(is_palindrome(557787755)).to eq(true)
  end
end
