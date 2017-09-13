
def binary(x)
    binary_number = []
    while x > 0
        remainder = x % 2
        x /= 2
        binary_number.push(remainder)
    end
    binary_number
end
puts binary(69)
