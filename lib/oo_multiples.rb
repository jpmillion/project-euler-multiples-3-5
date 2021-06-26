# Enter your object-oriented solution here!
class Multiples
    attr_accessor :limit, :multiples
    def initialize(limit)
        @limit = limit
        @multiples = []
    end

    def collect_multiples
        three_multiple = 3
        five_multiple = 5
        while three_multiple < limit || five_multiple < limit
            if three_multiple < five_multiple
                multiples.push(three_multiple)
                three_multiple += 3
            elsif five_multiple < three_multiple
                multiples.push(five_multiple)
                five_multiple += 5
            else
                multiples.push(three_multiple)
                three_multiple += 3
                five_multiple += 5
            end
        end
        multiples
    end

    def sum_multiples
        collect_multiples
        multiples.reduce(0) { |sum, num| sum + num }
    end
end