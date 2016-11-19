class String
  def caesar_cipher(n=1)
    string_array = self.split("")
    encoded_array = string_array.map do |x|
      (x.ord + n).chr
    end
    encoded_array.join
  end
end
