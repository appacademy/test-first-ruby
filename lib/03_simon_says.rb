def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times = 2)
  ((word + " ") * times).strip
end

def start_of_word(word, num)
  word[0..num - 1]
end

def first_word(phrase)
  phrase.split.first
end

def titleize(phrase)
  little_words = %w(and over the a)
  arr = phrase.split
  arr.each { |word| word[0] = word[0].upcase unless little_words.include?(word) && word != arr.first}
  arr.join(" ")
end