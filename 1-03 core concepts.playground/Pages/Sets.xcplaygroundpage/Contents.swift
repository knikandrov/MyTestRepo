//: [Previous](@previous)

var someSet: Set<Int> = [1, 2, 3, 1]

someSet.contains(1)
someSet.contains(99)

someSet.insert(5)
someSet.remove(3)
let removedElement = someSet.remove(3)
someSet

let anotherSet: Set<Int> = [5, 7, 13]
let intersection = someSet.intersection(anotherSet)
let difference = someSet.symmetricDifference(anotherSet)
let union = someSet.union(anotherSet)

someSet.formUnion(anotherSet)
someSet
anotherSet



//: [Next](@next)
