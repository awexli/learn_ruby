#write your code here
def echo(string)
    return string
end

def shout(string)
    return string.upcase
end

def repeat(string, num = 2)
    result = ""

    if num < 2
      return string
    end

    for i in 1..num
        if i != num
          result += "#{string} "
        else
          result += "#{string}"
        end
    end
    
    return result
end

def start_of_word(string, num)
    return string[0..num-1]
end

def first_word(string)
    arr = string.split
    return arr[0]
end

def titleize(string)
    short_words = ['and', 'the', 'over']
    # any substring consisting of a word character (\w') 
    # followed by 0 or more word characters (+)
    result = string.gsub(/\w+/) do |word|
        if short_words.include? word
            word
        else
            word.capitalize
        end
    end
    result[0] = result[0].capitalize
    return result
end