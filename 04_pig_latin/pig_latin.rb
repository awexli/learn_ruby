def translate(string)
    vowels = /[aeiou]/
  
    string = string.split.map do |word|
      vowel_index = word.index(vowels)
      consonant = word[0..vowel_index]
      if consonant.include? 'qu'
        word << consonant + "ay"
      else
        consonant = word[0..vowel_index-1]
        word << consonant + "ay"
      end
      word = word[consonant.length..-1]
    end
    string.join(" ")
end