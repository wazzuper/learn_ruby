#write your code here
def translate(words)
  array_of_words = words.split
  vowels = %w{ a e i o u }
  result = ''

  array_of_words.each do |word|
    current_index = array_of_words.index(word)

    if vowels.include?(word[0])
      word += 'ay'
    elsif word.include?('sch')
      word.insert(-1, word[0..2])
      word = word[3..-1]
      word += 'ay'
    elsif word.include?('qu')
      if word[0..1] == 'qu'
        word.insert(-1, word[0..1])
        word = word[2..-1]
      else
        word.insert(-1, word[0])
        word = word[1..-1]
        word.insert(-1, word[0..1])
        word = word[2..-1]
      end

      word += 'ay'
    else
      word.insert(-1, word[0])
      word = word[1..-1]

      if !vowels.include?(word[0])
        word.insert(-1, word[0])
        word = word[1..-1]

        if !vowels.include?(word[0])
          word.insert(-1, word[0])
          word = word[1..-1]
        end
      end

      word += 'ay'
    end

    if array_of_words.length > 1
      if current_index != array_of_words.index(array_of_words.last)
        word += ' '
      else
        word.strip!
      end
    end

    result << word
  end

  result
end