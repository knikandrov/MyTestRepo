//: [Previous](@previous)

let number = Int.max
let numberDescription: String

switch number {
case 0:
  numberDescription = "Zero"
case 1...9:
  numberDescription = "Between 1 and 9"
case let negativeNumber where negativeNumber < 0:
  numberDescription = "Negative"
case _ where number > .max / 2:
  numberDescription = "Very large!"
default:
  numberDescription = "No description"
}

let numberIsEven: Bool

switch number % 2 {
case 0:
  numberIsEven = true
default:
  numberIsEven = false
}

let animalString = "Elephant"
let isHousePet: Bool

switch animalString {
case "Dog", "Cat", "Potbellied Hamster":
  isHousePet = true
default:
  isHousePet = false
}

let coordinates = (2, 2)
let pointCategory: String

switch coordinates {
case (0, 0):
  pointCategory = "Origin"
case (let x, 0):
  pointCategory = "On the x-axis at \(x)"
case (0, let y):
  pointCategory = "On the y-axis at \(y)"
case _ where coordinates.0 == coordinates.1:
  pointCategory = "Along y = x"
case let (x, y) where y == x * x:
  pointCategory = "Along y = x ^ 2"
case let (x, y):
  pointCategory = "No zero coordinates. x = \(x), y = \(y)"
}



// TODO: Write solution here

let age = 22
let lifeStage : String

switch age {
case 0...2:
    lifeStage = "Infant"
case 3...12:
    lifeStage = "Child"
case 13...19:
    lifeStage = "Teenager"
case 20...39:
    lifeStage = "Adult"
case 40...60:
    lifeStage = "Middle aged"
case 61...:
    lifeStage = "Eldery"
default:
    lifeStage = "INVALID"

}


let lifeStageAndName : String

switch ("Kostya", 22) {
case (let name, 0...2):
    lifeStageAndName = "\(name) is Infant"
case (let name, 3...12):
    lifeStageAndName = "\(name) is Child"
case (let name, 13...19):
    lifeStageAndName = "\(name) is Teenager"
case (let name, 20...39):
    lifeStageAndName = "\(name) is Adult"
case (let name, 40...60):
    lifeStageAndName = "\(name) is Middle aged"
case (let name, 61...):
    lifeStageAndName = "\(name) is Eldery"
default:
    lifeStageAndName = "INVALID"
}
//: [Next](@next)
