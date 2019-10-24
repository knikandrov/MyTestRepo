//: [Previous](@previous)

class Actor {
    let name: String
    var filmography: [String] = []
    
    init(name: String, filmography: [String]) {
        self.name = name
        self.filmography = filmography
    }
    
    
    func signOnForSequel(franchiseName: String) {
        filmography.append("Upcoming \(franchiseName) sequel")
    }
}

let gotgStar = Actor(name: "Rick Owens", filmography: ["Stranegrs"])
gotgStar.filmography.append("Avatar")

let starTrekStar = gotgStar
starTrekStar.filmography.append("Star Trek")

let avatarStar = starTrekStar
let alienStar = Actor(name: "Sigourney Weaver", filmography: ["Alien"])

for franchiseName in avatarStar.filmography {
    avatarStar.signOnForSequel(franchiseName: franchiseName)
}
avatarStar.filmography
gotgStar.filmography

// Challenge

class Student {
    let firstName: String
    let lastName: String
    var grade: Int
    
    init(firstName: String, lastName: String, grade: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.grade = grade
    }
}

class Classroom {
    let className: String
    var students: [Student]
    
    init(className: String, students: [Student]) {
        self.className = className
        self.students = students
    }
func getHighestGrade() -> Int? {
    return students.map {$0.grade}.max()
    }
}

let classroom = Classroom (className: "11b", students: [
    Student(firstName: "Kostya", lastName: "Bykov", grade: 70),
    Student(firstName: "Danil", lastName: "Ivanov", grade: 70),
    Student(firstName: "Vanya", lastName: "Vasilyev", grade: 40)
])

classroom.getHighestGrade()

extension Classroom {
     func curveGrades() {
        guard let highestGrade = getHighestGrade() else {
            return
        }
        let curveAmount = 100 - highestGrade
        
        for student in students {
        student.grade += curveAmount
        }
            
        students.sort { $0.grade > $1.grade }
    }
}

classroom.curveGrades()
classroom.students


//: [Next](@next)
