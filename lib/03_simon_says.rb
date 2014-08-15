def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num=2)
 out = []

 num.times { out << str }

 out.join(" ")
end

def start_of_word(str, len)
  str[0..(len - 1)]
end

def first_word(str)
  str.split.first
end

def titleize(str)
  capitalized_array = []

  str.split.each_with_index do |word, index|
    capitalized_array << capitalize_word(word, (index == 0))
  end

  capitalized_array.join(" ")
end

LITTLE_WORDS = ["and", "or", "the", "over"]

def capitalize_word(str, force_cap)

  return str if LITTLE_WORDS.include?(str) && !force_cap

  char_array = str.split("")
  char_array[0] = char_array[0].upcase
  char_array.join("")
end
