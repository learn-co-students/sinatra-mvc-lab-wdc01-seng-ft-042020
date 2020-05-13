
class PigLatinizer
    def self.piglatinize(str)
        return_array = []
        str_array = str.split(" ")

        str_array.each do |w|
            if w.match(/^[aeiou]/)
                return_array << w + 'way'
            else
                cluster = w.match(/^[^aeiou]+/).to_s
                w2 = w.sub(cluster, '')
                w2 += cluster + 'ay'
                return_array << w2
            end
        end
        return_array.join(' ')
    end
end
