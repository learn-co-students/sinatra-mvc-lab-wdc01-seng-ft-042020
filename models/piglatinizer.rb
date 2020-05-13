
class PigLatinizer

    def initialize

    end

    def piglatinize(string)
        return_array = []
        str_array = string.split(" ")

        str_array.each do |w|
            if w.match(/^[aeiou]/i)
                return_array << w + 'way'
            else
                cluster = w.match(/^[^aeiou]+/i).to_s
                w2 = w.sub(cluster, '')
                w2 += cluster + 'ay'
                return_array << w2
            end
        end
        return_array.join(' ')
    end
end
