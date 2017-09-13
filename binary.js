
function binary (x) {
    const binaryNumber = []
    while (x > 0) {
        let remainder = x % 2
        x = Math.floor(x / 2)
        binaryNumber.push(remainder)
    }
    return binaryNumber
}
console.log(binary(69))
