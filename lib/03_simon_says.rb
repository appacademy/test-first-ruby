
def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, repeats = 2)
	Array.new(repeats, string).join(" ")
end

def start_of_word(word, number)
	word = word.split("")

	if number == 1
		word[0]
	else
		letters = word[0..number - 1]
		letters.join
	end
end

def first_word(words)
	split_words = words.split(" ")
	split_words[0]
end

def titleize(word)	# This is a very ugly method. I'm sorry...
	split_words = word.split(" ")

	if split_words.length > 3
		split_words[0].capitalize!
		split_words[1].capitalize!
		split_words[-1].capitalize!
		split_words[-2].capitalize!
	elsif split_words.length == 3
		split_words.first.capitalize!
		split_words.last.capitalize!
	else 
		split_words.map! do |word|
			word.capitalize
		end
	end	
	split_words.join(" ")
end


