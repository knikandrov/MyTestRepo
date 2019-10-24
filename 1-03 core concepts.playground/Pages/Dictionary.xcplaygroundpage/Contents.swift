//: [Previous](@previous)

var emptyDictionary: [String: Int] = [:]

var namesAndPets = [
    "Ron" : "Rat",
    "Rincewind" : "Luggage",
    "Thor" : "Hammer",
    "Goku" : "FLY"
]
 
print(namesAndPets)

namesAndPets["Thor"]
namesAndPets["SUKA"]

let sukaPet = namesAndPets["SUKA"] ?? "No pet for SUKA"

namesAndPets.isEmpty
namesAndPets.count

//namesAndPets.updateValue("Owl", forKey: "Ron")
namesAndPets["Ron"] = "Owl"
namesAndPets["SUKA"] = "Pussy"

namesAndPets.removeValue(forKey: "Goku")

for (character, pet) in namesAndPets {
    print("\(character) has a \(pet)")
}

for (name, _) in namesAndPets {
    print(name)
}

for pet in namesAndPets.values {
print(pet)
}

//Challange
var bio = [
    "name" : "Konstantin",
    "profession" : "Student",
    "country" : "Russia",
    "city" : "Moscow"
]


bio["city"] = "Cheboksary"
print(bio)

func printLocation(ofPerson person: [String: String]) {
    if let country = person["country"],
        let city = person["city"] {
        print("They live in  \(country), \(city)")
    }
}

printLocation(ofPerson: bio)

