#! ruby
# Solution to first euler problem: https://projecteuler.net/problem=1


def multipleOf(x, arr)
    result = false
    arr.each do |n|
        if x % n == 0
            result = true
        end
    end
    result
end

def sumMultiples(howMany, mults)
    result = 0
    howMany.times do |n|
        if multipleOf(n, mults)
            result += n
        end
    end
    result
end

puts sumMultiples(10, [3, 5])
puts sumMultiples(1000, [3, 5])