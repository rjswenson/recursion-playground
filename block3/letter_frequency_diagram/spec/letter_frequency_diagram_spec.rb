
require_relative("../lib/letter_frequency_diagram.rb")


describe("#get_frequencies") do 
  it("separates letters and counts how many of each") do
    expect(get_frequencies("fooooobar")).to eq({"f"=>1, "o"=>5, "b"=>1, "a"=>1, "r"=>1})
    expect(get_frequencies("scenes")).to eq({"s"=>2, "c"=>1, "e"=>2, "n"=>1})
  end
end

describe("#make_histogram") do
  it("makes a histogram, where the # translates to stars") do
    expect(make_histogram("wooot")).to eq({"w"=> "*", "o"=> "***", "t"=> "*"})
    expect(make_histogram("sessiins")).to eq({"s"=>"****", "e"=>"*", "i"=>"**","n"=>"*"})
  end
end
