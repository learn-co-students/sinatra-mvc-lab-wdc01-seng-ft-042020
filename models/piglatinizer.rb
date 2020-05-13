class PigLatinizer

    def piglatinize(string)
        vowels = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
        pig_latin = []
        words = string.split(" ")
        words.each do |word|
            if vowels.include?(word[0])
                pig_latin << "#{word + 'way'}"
            else
                consonants = []
                consonants << word[0]
                if !vowels.include?(word[1])
                    consonants << word[1]
                    if !vowels.include?(word[2])
                        consonants << word[2]
                    end
                end
                pig_latin << "#{word[consonants.length..-1] + consonants.join + 'ay'}"
            end
        end
        pig_latin.join(" ")
        
    end

    # def piglatinsentence(words)
    #     piglatinwords = words.split(" ")
    #     piglatinwords.map! do |word|
    #         piglatinize(word)
    #     end
    #     piglatinwords.join(" ")
    # end

end