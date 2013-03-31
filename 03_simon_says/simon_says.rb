def echo(message)
  message
end

def shout(message)
  message.upcase
end

def repeat(message, number=2)
  string = "#{message} " * number
  string.strip
end

def start_of_word(word, characters)
  word[0...characters]
end

def first_word(sentence)
  sentence_array = sentence.split
  sentence_array.first
end

def titleize(sentence)
  sentence_array = sentence.split
  little_words = ["this","that", "and", "the", "a", "or", "from", "with", "unto", "is", "over"] # add other prepositions and articles as needed
  sentence_array.each do |word|
    if little_words.include? word
      word
    else
      word.capitalize!
    end
  end

  sentence_array[0].capitalize!
  sentence_array.join(' ')

end

p titleize("the and this is no joke")