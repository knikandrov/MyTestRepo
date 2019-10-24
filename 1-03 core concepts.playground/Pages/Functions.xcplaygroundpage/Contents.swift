//: [Previous](@previous)

func printMeow() {
  print("Meow!")
}

printMeow()
printMeow()

func printMultipleOfFive(multiplier: Int) {
  print("5 * \(multiplier) = \(5 * multiplier)")
}
printMultipleOfFive(multiplier: 10)

func printMultipleOf(number: Int, multiplier: Int = 1) {
  print("\(number) * \(multiplier) = \(number * multiplier)")
}
printMultipleOf(number: 4, multiplier: 2)
printMultipleOf(number: 15)

func multiply(_ factor1: Int, _ factor2: Int) -> Int {
  return factor1 * factor2
}
let result = multiply(7, 3)
print(result)

func multiplyAndDivide(_ number: Int, by factor: Int) -> (product: Int, quotient: Int) {
  return (number * factor, number / factor)
}
let results = multiplyAndDivide(4, by: 2)
let (product, quotient) = results
product
quotient

 
 // TODO: Write solution here

func printFullName(firstName: String, lastName: String){
    print(firstName + " " + lastName)
}
printFullName(firstName: "Konstantin" , lastName: "Nikandrov")

func printFullName1(_ firstName: String, lastName: String){
    print(firstName + " " + lastName)
}
printFullName1( "Konstantin" , lastName: "Nikandrov")

func calculateFullName(firstName: String, lastName: String) -> String {
    return( firstName + " " + lastName)
}

// TODO: Write solution here
func calculateFullName1(_ firstName: String, _ lastName: String) -> (fullname: String, length: Int) {
    let fullname = firstName + " " + lastName
    return(fullname, fullname.count)
}
 
calculateFullName1("Konstantin", "Nikandrov")

let(_, nameLength) = calculateFullName1("Konstantin", "Nikandrov")
nameLength
//: [Next](@next)
