class Book
  attr_reader :title
  def title=(title)
    final_title = ""
    little_words = ["a","an","the","at","by","for","in","of","on","to","up","and","as","but","or","nor","over"]
    title_array = title.split(" ")
    title_array[0] = title_array[0].capitalize
    title_array.each do |n|
      if little_words.include?(n)
        final_title = final_title + n + " "
      else
        final_title = final_title + n.capitalize + " "
      end
    end
    @title = final_title.chomp(" ")
  end
end

