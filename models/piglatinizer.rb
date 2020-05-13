class PigLatinizer 
    
    def piglatinize(string)
        string.split(" ").map {|word| add_ending_to_word(word)}.join(" ")
    end

    def vowel(letter)
         letter.match(/[AEIOUaeiou]/)
    end
    
    def consonants(letter)
        letter.match(/[BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]/)
    end
    
    def add_ending_to_word(word)
        if vowel(word[0])
            word + "way"
        elsif consonants(word[0])
            vowel_index = word.index(/[AEIOUaeiou]/)
            consonant_letter = word.slice(0..vowel_index-1)
            substract_consonant_word = word.slice(vowel_index..word.length)
            substract_consonant_word + consonant_letter + "ay"
        end
    end
end