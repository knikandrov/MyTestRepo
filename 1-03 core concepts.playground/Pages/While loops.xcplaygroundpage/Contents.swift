//: [Previous](@previous)

var count = 0
var roll:Int

repeat {
    roll = Int.random(in: 1...6)
    count += 1
    print("After \(count) rolls , roll is \(roll)")
} while roll != 6 && count < 5
//: [Next](@next)
