require 'benchmark'

def factorial(n)
    if n == 0
        1
    else
        n * factorial(n - 1)
    end
end

puts Benchmark.measure { factorial 10_000_000_000 }
puts factorial(1_000_000_000)
