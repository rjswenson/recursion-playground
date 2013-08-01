require_relative './../lib/recursive_evens.rb'


describe 'finding evens in array' do 
  it 'finds evens only' do
    expect(find_evens([2,3])).to eq([2])
    expect(find_evens([21,3, 5, 4])).to eq([4])
    expect(find_evens([2, 4, 6, 8, 10])).to eq([2,4,6,8,10])
    expect(find_evens([1,3,4, 6, 1])).to eq([4,6])
    expect(find_evens([])).to eq([])
    expect(find_evens([1, 2 , nil, 5])).to eq([2])
  end
end


