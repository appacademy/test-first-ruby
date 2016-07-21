require 'string_class'

describe 'caesar_cipher' do
  it 'should encode words with caesar cipher' do
    expect("hello".caesar_cipher(3)).to eq("khoor")
  end
end
