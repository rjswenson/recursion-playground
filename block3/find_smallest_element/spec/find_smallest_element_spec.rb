
require_relative("../lib/find_smallest_element.rb")

describe("#find_smallest") do
  it("finds the smallest in array of 10 ints") do
    expect(find_smallest([4,5,6,2,2,2,1,10])).to eq(1)
    expect(find_smallest([23423,234,343,22,5454,234234])).to eq(22)
    expect(find_smallest([7687686,7686786786,6767,76867867,7686787])).to eq(6767)
  end
end
