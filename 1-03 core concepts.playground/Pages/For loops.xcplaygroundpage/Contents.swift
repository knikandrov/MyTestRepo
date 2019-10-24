//: [Previous](@previous)

let range = 0...5
let range1 = 0..<5
 let usefulConstant = 5

 let closedRange = 0...usefulConstant
 let halfOpenRange = 0..<usefulConstant

 var sum = 0
 let count = 10

 for i in 1...count {
   sum += i
 }

 for _ in 0...count where count > 100 {
   print("Hodor")
 }

 for i in 1...count where i % 2 == 1 {
   print("\(i) is an odd number.")
 }

 for floor in 10...15 {
   if floor == 13 {
     print("👻")
     continue
   }
   print("Stop at Floor \(floor)")
 }
 print(" --- --- --- ")

 floors: for floor in 12...15 {
   rooms: for room in 11...16 {
     if room == 13 {
       print("👻")
       continue floors
     }
     print("Clean room \(floor)\(room)")
   }
 }



//: # Challenge Time - For Loops!
/*:
 Create a constant called range and set it equal to a range starting at 1 and ending with 10 inclusive. Write a for loop which iterates over this range and prints the square of each number.
 */

// TODO: Write solution here
let range3 = 1...10
for i in range3 {
    let square = i * i
    print(square)
}

/*:
 The code below iterates over only even rows. Change this to use a where clause on the first for loop to skip even rows instead of using continue. Check that the sum is still 448 after your modifications.
 */

// TODO: Modify per instructions above

var sum3 = 0
for row in 0..<8 where row % 2 == 1 {
  for column in 0..<8 {
    sum3 += row * column
  }
}
sum3

//: [Next](@next)
