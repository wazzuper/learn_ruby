class Book
# write your code here
  attr_accessor :title

  def title=(words)
    array_of_words = words.scan((/\w+/))
    result = ''
    stop_words = %w{ the a an and in of }

    array_of_words.each do |word|
      current_index = array_of_words.index(word)

      word.capitalize! if current_index == 0
      word.capitalize! if !stop_words.include?(word)
      word += ' ' if current_index != array_of_words.index(array_of_words.last)

      result << word
    end

    @title = result
  end

end