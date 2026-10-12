// SE4041 - Practical 03
// Exercise 05 - Enumerations

print("========== ENUMERATIONS ==========")

// 1. Create an enum for student grades

enum Grade {
    case A
    case B
    case C
    case D
    case F
}

let studentGrade = Grade.B

switch studentGrade {
case .A:
    print("Excellent")
case .B:
    print("Very Good")
case .C:
    print("Good")
case .D:
    print("Needs Improvement")
case .F:
    print("Fail")
}


// 2. Enum with raw values

print("\n========== RAW VALUES ==========")

enum Day: Int {
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

let today = Day.wednesday

print("Day: \(today)")
print("Day Number: \(today.rawValue)")


// 3. Get an enum case from a raw value

print("\n========== RAW VALUE LOOKUP ==========")

if let selectedDay = Day(rawValue: 5) {
    print("Selected Day: \(selectedDay)")
} else {
    print("Invalid day number")
}


// 4. Enum with a function

print("\n========== ENUM METHODS ==========")

enum TrafficLight {
    case red
    case yellow
    case green

    func action() -> String {
        switch self {
        case .red:
            return "Stop"
        case .yellow:
            return "Prepare"
        case .green:
            return "Go"
        }
    }
}

let light = TrafficLight.green

print("Traffic Light: \(light)")
print("Action: \(light.action())")


// 5. Enum with a computed property

print("\n========== COMPUTED PROPERTY ==========")

enum Semester {
    case semester1
    case semester2

    var description: String {
        switch self {
        case .semester1:
            return "First Semester"
        case .semester2:
            return "Second Semester"
        }
    }
}

let currentSemester = Semester.semester1

print(currentSemester.description)

print("\n========== END ==========")
