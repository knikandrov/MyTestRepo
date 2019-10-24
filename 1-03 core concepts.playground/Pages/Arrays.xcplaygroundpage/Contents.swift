//: [Previous](@previous)

let pastries = ["cookie", "cupacke", "donut", "pie"]

var pastries1: [String] = []
pastries1.append("cookie")
pastries1 += ["cupcake", "donut", "pie"]

//pastries1.removeAll()
pastries1.isEmpty

pastries1.count
if let first = pastries1.first,
    let min = pastries1.min(),
    let max = pastries1.max() {
    print(first, min, max)
}

let firstElement = pastries1[2]
let firstThree = Array(pastries1[1...3])
firstThree[0]

pastries1.contains("donut")

pastries1.insert("pizza", at: 0)

let removedTwo = pastries1.remove(at: 1)
let removedLast = pastries1.removeLast()

removedTwo
removedLast
pastries1

pastries1[0...1] = ["brownie", "fritter", "blunt"]
pastries1

pastries1.swapAt(1, 2)

for (index, pastry) in pastries1.enumerated() {
    print(index, pastry)
}

//CHallange

var players = ["Alice", "Bob", "Dan", "Eli", "Frank"]
if let index = players.firstIndex(of: "Dan") {
    print(index)
}

players = ["Anna", "Brain", "Craig", "Dan", "Donna", "Eli", "Franklin"]
let scores = [2,2,8,6,1,2,1]

for (index, player) in players.enumerated() {
    print(player, scores[index])
}
//: [Next](@next)
