//: [Previous](@previous)

struct Grade {
  var letter: Character
  var points: Double
  var credits: Double
}

class Person {
  var firstName: String
  var lastName: String

  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

class Student: Person {
  var grades: [Grade] = []
  
}

let john = Person(firstName: "John", lastName: "Snon")
let jane = Student(firstName: "Jane", lastName: "Snane")

john.firstName
jane.firstName

let historyGrade = Grade(letter: "B", points: 9, credits: 3)
jane.grades.append(historyGrade)


class SchoolBandMember: Student {
    var minimumPraticeTime = 2
}

class StudentAthlete: Student {
    var isEligible: Bool {
        return grades.filter { $0.letter == "F" } .count < 3
    }
    
    override var grades: [Grade] {
        get { return super.grades }
        set {
            super.grades = newValue
            if !isEligible {
                print("Note enogh. Study!")
            }
        }
    }
}

let kostya = SchoolBandMember(firstName: "Kostya", lastName: "Rap")
let pumpkin = StudentAthlete(firstName: "Pumpkin", lastName: "Rock")

let array = [jane, kostya, pumpkin]

let student = kostya as Student
let athlete = student as! StudentAthlete

let utterFailureGrade = Grade(letter: "F", points: 0, credits: 0)
athlete.grades

func getEveningActivity(student: Student) -> String {
    if let bandMember = student as? SchoolBandMember {
        return "Practising for at least \(bandMember.minimumPraticeTime) hours"
    } else {
        return "Error"
    }
}

getEveningActivity(student: kostya)
getEveningActivity(student: jane)

//: [Next](@next)
