//: [Previous](@previous)

var result: Int? = 30
print(result)

var catName: String? = "Bars"
var catAge: Int? = 3

var unwrappedCatName = catName!
print("The cat name is \(unwrappedCatName)")

if let catName = catName,
    let catAge = catAge {
    print("The cat is \(catName) and she is \(catAge)")
} else {
    print("not cat name or age")
}

func printCatInfo(catName: String?, catAge: Int?)
{
    guard let catName = catName,
        let catAge = catAge  else {
            print("no name or age")
            return
    }
        print("The cat is \(catName) and she is \(catAge)")
}
printCatInfo(catName: "bars", catAge: 3)
printCatInfo(catName: nil , catAge: 3)

var optionalInt: Int? = nil //10
var requiredResult = optionalInt ?? 0

//challenge

let myFavouriteSong: String? = nil

if let song = myFavouriteSong {
    print(song)
} else {
    print("i dont have song")
}


func printNickname(nickname: String?) {
    guard let nickname = nickname else {
        print("error")
        return
    }
    print("\(nickname)")
}

printNickname(nickname: "Konstantin")

printNickname(nickname: nil)
//: [Next](@next)
