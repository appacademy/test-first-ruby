def translate(words)
  word_string = words.split(" ")
  vowels = ["a","e","i","o","u","y"]
  punctuation = [",","!",".","?",";",":"]
  vowel_index = 0
  pig_latin = ""
  for word in word_string
    if vowels.include?(word[0])
      moving_letters = "ay"
    else
      if vowels.include?(word[1]) && word.slice(0,2) != "qu"
        vowel_index = 1
      elsif vowels.include?(word[2]) && word.slice(1,2) != "qu"
        vowel_index = 2
      elsif vowels.include?(word[3]) && word.slice(2,2) != "qu"
        vowel_index = 3
      end
      moving_letters = word.slice!(0,vowel_index) + "ay"
    end
    if punctuation.include?(word[-1])
      word.insert(-2,moving_letters)
    else
      word.insert(-1,moving_letters)
    end
    if moving_letters == moving_letters.capitalize
      word.capitalize!
    end
    pig_latin = pig_latin + word + " "
  end
  pig_latin.chomp(" ")
end
