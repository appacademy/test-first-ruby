require 'fixnum_class'

describe 'stringify' do
  it 'returns a string representing the original integer in a different base (up to base 16)' do
    expect(5.stringify(10)).to eq("5")
  end
  it 'returns a string representing the original integer in a different base (up to base 16)' do
    expect(5.stringify(2)).to eq("101")
  end
  it 'returns a string representing the original integer in a different base (up to base 16)' do
    expect(5.stringify(16)).to eq("5")
  end

  it 'returns a string representing the original integer in a different base (up to base 16)' do
    expect(234.stringify(10)).to eq("234")
    expect(234.stringify(2)).to eq("11101010")
    expect(234.stringify(16)).to eq("EA")
  end
end
