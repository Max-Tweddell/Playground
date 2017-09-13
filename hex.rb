
def hex(x)
    hex_number = []
    while x > 0
        remainder = x % 16
        x /= 16
        hex_number.push(remainder)
    end
    hex_number
end

def hex_filter(number)

    if number == 11
        result = 'A'
    elsif number == 12
        result = 'B'
    elsif number == 13
        result = 'C'
    elsif number == 14
        result = 'D'
    elsif number == 15
        result = 'E'
    elsif number == 16
        result = 'F'
    else
        result = number
    end
    puts result
end

hexadecimals = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F']
decimals = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

result = hex(231).select do |elem|
    hex_filter elem
end
puts result
