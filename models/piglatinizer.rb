class Piglatin

    attr_reader :expression

    def initialize(expression)
        @expression = expression 
    
    end

    # DONE get string into expression after initialization
    # DONE make sure that expression is an array of word(s)
    # DONE use an enumerable on the array of strings 
    # DONE each time through we can call a convert method
    # DONE create a convert method that takes in a string and creates a pig latin version of the string


    def create_array_of_words
        arr = self.expression.split(" ")
        return arr
    end


    def convert(word)
     
        if /^[^aeiou]+/i.match?(word)   #Regex.match? the string
            ending = /^[^aeiou]+/i.match(word) 
            ending = ending.to_s
            ending += "ay"
   
            new_word = word.gsub(/^[^aeiou]+/i, "")
            new_word = new_word + ending

            new_word.downcase!
        else 
            new_word = word + "way"
            new_word.downcase!
        end

        # return string of the word changed to Pig Latin
        new_word
    end

    def ultimate_method
        array_of_words = self.create_array_of_words
        arr = array_of_words.map do |word|
            self.convert(word)
        end
        arr.join(" ")
    end






end
