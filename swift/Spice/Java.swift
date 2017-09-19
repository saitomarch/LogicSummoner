var best: (power: Int, price: Int) = (power: 0, price: 1)
while let input = readLine() {
    let arr = input.characters.split{ $0 == " " }.map(String.init)
    guard let power = Int(arr[0]),
        let price = Int(arr[1]) else { fatalError() }
    if (Double(best.power) / Double(best.price)) < (Double(power) / Double(price)) {
        best = (power: power, price: price)
    }
}

print("\(best.price)")

