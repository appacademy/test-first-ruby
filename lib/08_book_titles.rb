class Book
  LITTLE_WORDS = ["and", "or", "the", "over", "in", "of", "a", "an"]

  attr_reader :title

  def title=(t)
    @title = Book.titleize(t)
  end

  private
    def self.titleize(str)
      capitalized_array = []

      str.split.each_with_index do |word, index|
        capitalized_array << capitalize_word(word, (index == 0))
      end

      capitalized_array.join(" ")
    end

    def self.capitalize_word(str, force_cap)
      return str if LITTLE_WORDS.include?(str) && !force_cap

      char_array = str.split("")
      char_array[0] = char_array[0].upcase
      char_array.join("")
    end
end
