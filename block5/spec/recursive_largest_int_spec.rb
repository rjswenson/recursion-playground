require_relative './../lib/recursive_largest_int.rb'


describe 'finds the largest element in array' do 
  it 'removes index 0 if its smaller than index 1' do
    expect(largest_int([1,2])).to eq(2)
  end
  it 'removes index 0 and 1 if index 2 is largest' do  
    expect(largest_int([5, 10, 15])).to eq(15)
  end
  it 'removes only smaller elements' do
    expect(largest_int([7,2,11,25,1])).to eq(25)
  end
  it 'outputs nil if array is empty' do
    expect(largest_int([])).to eq(nil)
  end
  it 'outputs number if array is only one int' do
    expect(largest_int([5])).to eq(5)
  end
end