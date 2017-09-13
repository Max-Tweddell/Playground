require 'benchmark'
def collatz_sequence(x)
    seq = [x]
    while seq[-1] > 1
       if x % 2 == 0
         seq.push(x/2)
       else
         seq.push(3*x+1)
        end

    x = seq[-1]
     end
    return seq
 end

puts Benchmark.measure {collatz_sequence(99999999999999900*999999999*99999999*999999999*9999999*999999*999999*9999**99)}
puts 99999999999999900*999999999*99999999*999999999*9999999*999999*999999*9999**99
