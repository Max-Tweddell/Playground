def fib(x)
  if x < 2
    x
  else
    fib(x - 1) + fib(x - 2)
  end
end


puts Array (1..100).each { |x| fib(x) }.select { |x| x.even? }.count
