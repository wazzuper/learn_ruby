#write your code here
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times_of_repeat = 2)
  result = ''

  while times_of_repeat > 0
    word += ' ' if word[-1] != ' '
    word.strip! if times_of_repeat == 1
    result << word
    times_of_repeat -= 1
  end

  result
end

def start_of_word(word, num)
  word[0..num-1]
end

def first_word(words)
  words.split[0]
end

def titleize(words)
  array_of_words = words.split
  stop_words = %w{ david copperfield war peace bridge river kwai }
  result = ''

  array_of_words.each do |word|
    current_index = array_of_words.index(word)

    word.capitalize! if current_index == 0
    word.capitalize! if stop_words.include?(word)

    if current_index != array_of_words.index(array_of_words.last)
      word += ' '
    else
      word.strip!
    end

    result << word
  end

  result
end

puts titleize('the bridge over the river kwai')