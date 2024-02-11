import Experimentation

let first = 17
let second = 25

let (result, code) = #stringify(first + second)

print("The value \(result) was produced by the code \"\(code)\"")
