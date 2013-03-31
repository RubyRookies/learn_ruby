def translate(sentence)
  s = sentence.split

  s.map! do |word|
    unless word.include? 'qu'
      word_helper(word)

    else
      qu_helper(word)
    end
  end
  
  s.join(' ')

end

def word_helper(word)
  if word[2] =~ /[^aeiou]/ && word[1] =~ /[^aeiou]/ && word[0] =~ /[^aeiou]/
    "#{word[3..-1]}#{word[0..2]}ay"

  elsif word[1] =~ /[^aeiou]/ && word[0] =~ /[^aeiou]/
    "#{word[2..-1]}#{word[0..1]}ay"
    
  elsif word[0] =~ /[^aeiou]/
    "#{word[1..-1]}#{word[0]}ay"

  else  
    "#{word}ay"
  end  
end

def qu_helper(word) #quiet -> iet (ietquay) #square -> sare (aresquay)
  word.sub!('qu', '')

  if word[2] =~ /[^aeiou]/ && word[1] =~ /[^aeiou]/ && word[0] =~ /[^aeiou]/
    "#{word[3..-1]}#{word[0..2]}quay"

  elsif word[1] =~ /[^aeiou]/ && word[0] =~ /[^aeiou]/
    "#{word[2..-1]}#{word[0..1]}quay"
    
  elsif word[0] =~ /[^aeiou]/
    "#{word[1..-1]}#{word[0]}quay"

  else  
    "#{word}quay"
  end  
end