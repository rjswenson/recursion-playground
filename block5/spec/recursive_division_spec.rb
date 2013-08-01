require_relative('./../lib/recursive_division_chain.rb')


describe 'should return terms count ' do  
  it 'should return 10 on num = 13' do
    expect(chain_divide(13)).to eq(10)
  end
  it 'should return 8 on num = 3' do
    expect(chain_divide(3)).to eq(8)
  end
end

describe 'should return max_chains_range for a range' do
  it 'should work with 13 ONLY (no range)' do
    expect(max_chains_range(13, 13)).to eq([13,10])
  end
  it 'should work with 1-3' do
    expect(max_chains_range(1,3)).to eq([3,8])
  end
end

