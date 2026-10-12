// SE4041 - Practical 03
// Exercise 01 - Functions

print("========== SIMPLE FUNCTION ==========")

func greet() {
    print("Welcome to SE4041")
}

greet()


// Function with a Parameter

print("\n========== PARAMETERS ==========")

func greetStudent(name: String) {
    print("Welcome \(name)")
}

greetStudent(name: "Amal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")


// Function Returning a Value

print("\n========== RETURN VALUES ==========")

func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }

    return "Fail"
}

print("Mark 68: \(grade(for: 68))")
print("Mark 35: \(grade(for: 35))")


// Activity 1: Calculate Average

print("\n========== CALCULATE AVERAGE ==========")

func calculateAverage(
    _ mark1: Double,
    _ mark2: Double,
    _ mark3: Double
) -> Double {
    return (mark1 + mark2 + mark3) / 3
}

let average = calculateAverage(75, 82, 68)
print("Average: \(average)")


// Argument Labels

print("\n========== ARGUMENT LABELS ==========")

func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}

travel(from: "Malabe", to: "Kandy")


// Removing an Argument Label

print("\n========== DOUBLE FUNCTION ==========")

func double(_ number: Int) -> Int {
    return number * 2
}

print("Double of 10: \(double(10))")


// Default Parameter Values

print("\n========== DEFAULT PARAMETERS ==========")

func result(_ mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }

    return "Fail"
}

print("Mark 68: \(result(68))")
print("Mark 68 with pass mark 75: \(result(68, passMark: 75))")

print("\n========== END ==========")
