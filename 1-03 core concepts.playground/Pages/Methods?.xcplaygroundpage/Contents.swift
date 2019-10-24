//: [Previous](@previous)

enum Weekday: CaseIterable {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday

    mutating func advance(by dayCount: UInt){
        let indexOfToday = Weekday.allCases.firstIndex(of: self)!
        let indexOfAdvancedDay = indexOfToday + Int(dayCount)
        
       self = Weekday.allCases[indexOfAdvancedDay % Weekday.allCases.count]
    }
}

Weekday.allCases
var weekday: Weekday = .tuesday
weekday.advance(by: 6)

struct Time {
    var day: Weekday
    var hour: UInt

    init(day: Weekday, hour: UInt = 0) {
        self.day = day
        self.hour = hour
    }
}

var time = Time(day: .monday)

//Challenge

struct Student {
    let firstName: String
    let lastName: String
    var grade: Int
}

struct Classroom {
    let className: String
    var students: [Student]

func getHighestGrade() -> Int? {
    return students.map {$0.grade}.max()
    }
}

var classroom = Classroom (className: "11b", students: [
    Student(firstName: "Kostya", lastName: "Bykov", grade: 70),
    Student(firstName: "Danil", lastName: "Ivanov", grade: 70),
    Student(firstName: "Vanya", lastName: "Vasilyev", grade: 40)
])

classroom.getHighestGrade()

extension Classroom {
    mutating func curveGrades() {
        guard let highestGrade = getHighestGrade() else {
            return
        }
        students = students.map { [curveAmount = 100 - highestGrade] student in
            var student = student
            student.grade += curveAmount
            return student
        }
        .sorted { $0.grade > $1.grade }
    }
}

classroom.curveGrades()
classroom.students

//: [Next](@nex
