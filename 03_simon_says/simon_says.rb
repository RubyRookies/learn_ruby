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
end