using Memoize
@memoize function fib(x:: Integer)::BigInt
    if x < 2
        BigInt(x)
    else
        fib(x - 1) + fib(x -2)
    end
end

print(filter(x-> iseven(x), map(x -> fib(x), 1:8000)))
