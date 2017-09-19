guard let len = Int(readLine() ?? "0"),
    let str = readLine() else { fatalError() }
var arr: [String] = []
for idx in 0 ..< len {
    let ch = str[str.index(str.startIndex, offsetBy: idx)]
    switch ch {
    case "L":
        arr.insert("\(idx + 1)", at: 0)
    case "R":
        arr.append("\(idx + 1)")
    default:
        break
    }
}
print(arr.joined(separator: " "))

