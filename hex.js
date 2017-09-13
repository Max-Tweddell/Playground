let data = [1, 6, 3, 8, 2, 9, 12, 14]
let binaryNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
let hexNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F']

function hexTwo(x) {
  return binaryNumbers.map((elem, idx) => {
    if (x == elem) {
      console.log(hexNumbers[idx])
      return hexNumbers[idx]
    } else {
      null
    }
  })
}

console.log(data.map(hexTwo).reduce((a, b) => a.concat(b)).filter(x => x !== undefined))


console.log(data.map(x => binaryNumbers.map((elem, idx) => x == elem ? hexNumbers[idx] : undefined)).reduce((a, b) => a.concat(b)).filter(x => x !== undefined))
