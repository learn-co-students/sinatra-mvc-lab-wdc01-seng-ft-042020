class PigLatinizer 
    
    def piglatinize(string)
        string = string.to_s.downcase
        string.split(" ")
    end

    def vowel(letter)
         letter.match(/[aeiou]/)
    end
    
    def consonants(letter)
        letter.match(/[bcdfghjklmnpqrstvwxyz]/)
    end
    
    def add_ending_to_word(word)
        if vowel(word[0])
            word + "way"
        elsif consonants(word[0])
            word + "ay"
        end
    end
    
    # take in the string, downcase
    #split into individual letters
    # take everything before a vowel and put at end
    # add ay if we remove beginning to end,
    # except in case of vowels add (way), if noting taken off 
    

end






