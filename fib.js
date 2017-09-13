function fib(x) {
    if (x < 2) {
        return 0
    } else {
        return fib(x - 1) + fib(x - 2)
    }
}
console.time('test')
console.log(fib(10))
console.timeEnd('test')
