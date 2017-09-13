require 'benchmark'
def primes(n, arr)
  (2..n + 1).each do |p|
    (2..p).each do |i|
      if p % i == 0
        break
      else
        arr.push(p)
      end
    end
  end
  arr.uniq
end

puts Benchmark.measure { primes(20, []) }
puts primes(100, [])
