class Book
def title=(new_title)
    @exclude = ['the', 'a', 'an', 'and', 'in', 'of']
    new_title = new_title.split.map do |word|
        if @exclude.include? word
            word
        else
            word = word.capitalize
        end
    end
    new_title[0] = new_title[0].capitalize
    @title = new_title.join(" ")
end

def title
    @title
end

end