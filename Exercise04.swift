// SE4041 - Practical 03
// Exercise 04 - Closures, Map, Filter and Reduce

print("========== CLOSURES ==========")

// 1. Store a closure in a variable

let greet = {
    print("Welcome to Swift!")
}

greet()


// 2. Closure with parameters

print("\n========== CLOSURE PARAMETERS ==========")

let greetStudent = { (name: String) in
    print("Welcome, \(name)!")
}

greetStudent("Amal")
greetStudent("Nimali")


// 3. Closure with a return value

print("\n========== CLOSURE RETURN VALUE ==========")

let square = { (number: Int) -> Int in
    return number * number
}

print("Square of 5: \(square(5))")


// 4. MAP - Transform every element

print("\n========== MAP ==========")

let numbers = [1, 2, 3, 4, 5]

let doubledNumbers = numbers.map { number in
    number * 2
}

print("Original Numbers: \(numbers)")
print("Doubled Numbers: \(doubledNumbers)")


// 5. FILTER - Select matching elements

print("\n========== FILTER ==========")

let marks = [72, 45, 88, 35, 90, 60]

let passedMarks = marks.filter { mark in
    mark >= 50
}

print("All Marks: \(marks)")
print("Passed Marks: \(passedMarks)")


// 6. REDUCE - Calculate a total

print("\n========== REDUCE ==========")

let total = marks.reduce(0) { result, mark in
    result + mark
}

print("Total Marks: \(total)")


// 7. Calculate the average

print("\n========== AVERAGE ==========")

let average = Double(total) / Double(marks.count)

print("Average Mark: \(average)")


// 8. Combine map, filter and reduce

print("\n========== COMBINED OPERATIONS ==========")

let combinedNumbers = [1, 2, 3, 4, 5, 6]

let doubledEvenTotal = combinedNumbers
    .map { $0 * 2 }
    .filter { $0 % 4 == 0 }
    .reduce(0, +)

print("Original Numbers: \(combinedNumbers)")
print("Combined Result: \(doubledEvenTotal)")

print("\n========== END ==========")
