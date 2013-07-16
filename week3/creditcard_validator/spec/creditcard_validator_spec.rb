require_relative("../lib/creditcard_validator.rb")

describe("#sum_of_even_digits") do
  it("grabs even digits, 2x them") do
    expect(sum_of_even_digits(252525)).to eq(12)
    expect(sum_of_even_digits(515151)).to eq(3)
    expect(sum_of_even_digits(4872591443)).to eq(24)
  end  
end

describe("#sum_of_odd_digits") do
  it("adds each odd digit together") do
    expect(sum_of_odd_digits(3333333)).to eq(12)
    expect(sum_of_odd_digits(1313031)).to eq(3)
    expect(sum_of_odd_digits(73242303425)).to eq(20)
  end
end


describe("#get_digit") do
  it("splits numbers > 9 into 2 digits, then adds") do
    expect(get_digit(9)).to eq(9)
    expect(get_digit(10)).to eq(1)
    expect(get_digit(14)).to eq(5)
  end
end

describe("#get_prefix") do
  it("pulls first digit/s of cc num") do
    expect(get_prefix(43534534543)).to eq(4)
    expect(get_prefix(10353450)).to eq(1)
    expect(get_prefix(35345345)).to eq(35)
    expect(get_prefix(374545)).to eq(37)
  end
end


describe("#prefix_matched") do
  it("check true/false get_prefix") do
    expect(prefix_matched(13423423423)).to eq(false)
    expect(prefix_matched(4564564564)).to eq(true)
    expect(prefix_matched(375645645)).to eq(true)
    expect(prefix_matched(30456456435)).to eq(false)
  end
end

describe("#num_digits") do
  it("checks if digit count is accurate") do
    expect(num_digits(435344)).to eq(false)
    expect(num_digits(4354534354359)).to eq(true)
    expect(num_digits(123456789101214)).to eq(true)
    expect(num_digits(2342342342342342342323)).to eq(false)
  end
end

describe("#is_valid") do
  it("calls all methods, checks valid") do
    expect(is_valid(4388576018402626)).to eq(false)
    expect(is_valid(5454545454545454)).to eq(true)
    expect(is_valid(378282246310005)).to eq(true)
    expect(is_valid(4388576018410707)).to eq(true)
  end
end






