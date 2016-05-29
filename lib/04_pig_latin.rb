def translate(phrase)
  vowels = %w(a e i o u)

  words = phrase.split
  arr = []
  words.each do |word|
    while !vowels.include?(word[0]) || (word[0] == "u" && word[-1] == "q")
      word += word[0]
      word = word [1..-1]
    end
    word = word + "ay"
    arr.length == 0 ? arr << word : arr << " " + word
  end
  
  arr.join()
end