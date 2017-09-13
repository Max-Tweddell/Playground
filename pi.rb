require 'benchmark'

def pi(n)
    sum = 0
    sign = 1
    (0..n).each do |i|
        sum += sign / (2.0*i+1.0)
        sign *= -1;
    end
    return 4.0*sum
end
puts Benchmark.measure {pi(10000000)}
puts pi(10000000)
