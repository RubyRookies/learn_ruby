def translate(sentence)
  s = sentence.split

  s.map! do |word|

    if word[1] =~ /[^aeiou]/ && word[0] =~ /[^aeiou]/
      "#{word[2..-1]}#{word[0..1]}ay"
      
    elsif word[0] =~ /[^aeiou]/
      "#{word[1..-1]}#{word[0]}ay"  

    else  
      "#{word}ay"
    end

  end
  
  s.join(' ')

end


p translate("pie is better with apple than cherry")
# p vowel("hi")