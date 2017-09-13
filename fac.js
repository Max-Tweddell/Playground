


function factorial (n) {
    if (n === 0) {
        return 1
    }
    else {
        return n * factorial(n-1)
    }
}
console.time('test')
console.log(factorial(1000))
console.timeEnd('test')
