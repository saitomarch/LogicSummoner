guard let str = readLine() else { fatalError() }

var last: Character = "b"
var arr: [String] = []
var cnt = 0

for ch in str.characters {
    if ch != last {
        arr.append("\(cnt)")
        cnt = 0
        last = ch
    }
    cnt += 1
}
arr.append("\(cnt)")

print(arr.joined(separator: " "))

