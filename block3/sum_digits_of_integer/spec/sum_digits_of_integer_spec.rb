
require_relative("../lib/sum_digits_of_integer.rb")

describe("#sum_digits") do
  it("draws each digit using base10 and modulos") do
    expect(sum_digits(12)).to eq(3)
    expect(sum_digits(54545)).to eq(23)
    expect(sum_digits(100754)).to eq(17)
  end
end

describe("#sum_string") do
  it("separates each num, via string array, and adds them") do
    expect(sum_digits(12)).to eq(3)
    expect(sum_digits(54545)).to eq(23)
    expect(sum_digits(100754)).to eq(17) 
  end
end
