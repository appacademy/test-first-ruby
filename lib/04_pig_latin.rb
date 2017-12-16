def translate(word)
	if word.split(" ").length > 1
		translate_sentence(word)
	elsif word.include?("qu")
		up_to_u = word[0..word.index("u")] # grab the from start of word to the letter "u"
		word[0..word.index("u")] = "" # modify start of word to an empty string to delete 
		word + up_to_u + "ay" # remaining word + start of word to the letter u + "ay"
	elsif /[aeiou]/.match(word[0])
		word + "ay"
	else 
		while /[aeiou]/.match(word[0]) == nil
			first_letter = word[0]
			word[0] = ""
			word += first_letter 
		end
		word + "ay"
	end
end

def translate_sentence(words)
	split_words = words.split(" ")
	sentence_array = []

	split_words.each do |word|
		sentence_array << translate(word)
	end 
	sentence_array.join(" ")
end