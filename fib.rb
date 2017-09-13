require 'benchmark'
def fib(x, arr)
    if x < 2
        x
    else
        arr.push(x)
        fib(x - 1, arr) + fib(x - 2, arr)
    end
end

def fibtwo(x)
    if x < 2
        x
    else
        fibtwo(x - 1) + fibtwo(x - 2)
    end
end

def fibthree(x)
    first = 0
    second = 1
    for i in 0..x
        temp = first + second
        first = second
        second = temp
    end
    puts "end"
end




# puts Benchmark.measure {fib(30,[])}
puts fibthree(200000)
