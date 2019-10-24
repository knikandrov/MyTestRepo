//: [Previous](@previous)
/*:
 Create another tuple, but this time name the constituent components. Give them names related to the data that they contain: month, day, year and emoji.
 */

// TODO: Write solution here
let Data1 = (day: 26, month: 03, year: 1997, emoji: "👙")

/*:
 In one line, read the day and emoji values into two constants. You’ll need to employ the underscore to ignore the month and year.
 */

// TODO: Write solution here

let (day, _, _, emoji) = Data1
day
emoji

/*:
 Up until now, you’ve only seen constant tuples. But you can create variable tuples, too. Create one more tuple, like in the exercises above, but this time use var instead of let. Now change the emoji to a new value. */

// TODO: Write solution here

var Data3 = (day: 21, month: 01, year: 2020, emoji: "👙")
Data3.emoji = "👑"

//: [Next](@next)
