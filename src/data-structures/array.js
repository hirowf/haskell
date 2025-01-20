let arr = [1, 2, 'a', 5]

// console.log(arr[2])

const a = new ArrayBuffer(8)
const a8 = new Uint8Array(a)
const a32 = new Uint32Array(a)

console.log(a)
console.log(a8)
console.log(a32)

a32[0] = 4294967295

console.log(a32[0])

console.log(a)
console.log(a8)
