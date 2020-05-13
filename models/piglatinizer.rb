class PigLatinizer
    attr_reader :text
    def initialize(text)
        @text = text.downcase
    end
    #take in the string, downcase
    ##split into individual letters
    #take everything before a vowel and put at end
    #add ay if we remove beginning to end,
    # except in case of vowels add (way), if noting taken off 
    def letters
        letters = text.split("")
        puts letters
    end

end

PigLatinizer.new("string")

"String".letters

