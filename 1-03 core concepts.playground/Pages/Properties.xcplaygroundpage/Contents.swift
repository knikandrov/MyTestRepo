//: [Previous](@previous)

struct Wizard {
    static var commonMagicalIngredients = [
    "Polyjuice Potion",
    "Eye",
    "The Force"
    ]
    
    var firstName: String {
        willSet {
            print("\(firstName) will be set to \(newValue)")
        }
        didSet {
            if firstName.contains(" ") {
                print("No spacse allowed! \(firstName) is not a first name. Reverting name to \(oldValue)")
                firstName = oldValue
            }
        }
    }
    var lastName: String
    
    var fullName: String {
        get { return "\(firstName) \(lastName)"}
        set  {
            let nameSubstings = newValue.split(separator: " ")
            
            guard nameSubstings.count >= 2 else {
                print("\(newValue) is not a full name")
                return
            }
            
        let nameStrings = nameSubstings.map(String.init)
            firstName = nameStrings.first!
            lastName = nameStrings.last!
        }
    }
    
    lazy var magicalCreature = " "
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var wizard = Wizard(firstName: "Gandalf", lastName: "Chepush")

wizard.firstName = "Harry"
wizard.lastName = "Potter"
wizard.fullName
wizard.fullName = "Severus Sneg"
wizard.firstName = "Bla Bla"

Wizard.commonMagicalIngredients

//Chalenge
struct Temperature {
    var degreesF: Double {
        didSet {
            if degreesF > 100 {
                print("its dangerous \(degreesF) F")
            }
        }
    }
    
    var degreesC: Double {
        get { return (degreesF - 32) / 1.8 }
        set { degreesF = newValue * 1.8 + 32 }
    
    }
}

var temperature = Temperature(degreesF: 32)
temperature.degreesC
temperature.degreesC = 76


//: [Next](@next)
