
function pi (n){
    sum = 0
    sign = 1
    for (let i = 0; i < n; i++) {
        sum += sign / (2.0*i+1.0)
        sign *= -1;
    }
    return 4.0*sum
}

console.time('test')
console.log(pi(2000000000))
console.timeEnd('test')
