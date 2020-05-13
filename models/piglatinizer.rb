class Piglatin

    attr_reader :expression

    def initialize(expression)
        @expression = expression 
    
    end

    # DONE get string into expression after initialization
    # DONE make sure that expression is an array of word(s)
    # DONE use an enumerable on the array of strings 
    # each time through we can call a convert method
    # create a convert method that takes in a string and creates a pig latin version of the string



    def create_array_of_words
        arr = self.expression.split(" ")
        return arr
    end


    def convert
        # we will use it like this some_instance.convert

        # have access self which is the instance object
    
        # input 'happy'

        # output appyhay

        # return string of the word changed to Pig Latin
    
    end

    def ultimate_method
        array_of_words = self.create_array_of_words
        array_of_words.each do |word|
            puts word
        end

    end






end
