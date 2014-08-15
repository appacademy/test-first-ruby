VOWELS = ["a", "e", "i", "o", "u"]

def is_vowel(character)
  VOWELS.include?(character)
end

def get_initial_consonants(word)
  word_letters = word.split('')

  # need to track prev_letter to handle "qu" rule
  prev_letter = nil
  initial_consonants = []
  word_letters.each do |letter|
    break if is_vowel(letter) && !(letter == "u" && prev_letter == "q")
    initial_consonants << letter

    prev_letter = letter
  end

  initial_consonants.join
end

def translate_word(word)
  initial_consonants = get_initial_consonants(word)

  num_initial_consonants = initial_consonants.size
  rest_of_phrase = word[num_initial_consonants, word.length -
    num_initial_consonants]

  rest_of_phrase + initial_consonants + "ay"
end

def translate(phrase)
  translated_words = phrase.split.map { |word| translate_word(word) }

  translated_words.join(" ")
end
