# Enter your procedural solution here!
def collect_multiples(limit)
    multiples = []
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

def sum_multiples(limit)
    multiples = collect_multiples(limit)
    multiples.reduce(0) { |sum, num| sum + num }
end