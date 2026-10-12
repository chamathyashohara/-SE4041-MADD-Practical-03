// SE4041 - Practical 03
// Exercise 03 - Tuples

print("========== TUPLES ==========")

// Step 1: Create a function that returns multiple values

func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {

    let total = marks.reduce(0, +)

    return (
        marks.min()!,
        marks.max()!,
        Double(total) / Double(marks.count)
    )
}

// Step 2: Call the function

let result = summary(of: [72, 65, 48, 90])

print("Minimum Mark: \(result.minimum)")
print("Maximum Mark: \(result.maximum)")
print("Average Mark: \(result.average)")

// Step 3: Unpack the tuple

print("\n========== TUPLE UNPACKING ==========")

let (low, high, average) = summary(of: [72, 65, 48, 90])

print("Lowest: \(low)")
print("Highest: \(high)")
print("Average: \(average)")

// Step 4: Ignore an unwanted value

print("\n========== IGNORE A VALUE ==========")

let (minimum, maximum, _) = summary(of: [72, 65, 48, 90])

print("Minimum: \(minimum)")
print("Maximum: \(maximum)")

// Step 5: Analyze Marks Activity

print("\n========== ANALYZE MARKS ==========")

func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {

    let total = marks.reduce(0, +)
    let average = Double(total) / Double(marks.count)

    return (total, average)
}

let analysis = analyzeMarks([60, 70, 80, 90])

print("Total: \(analysis.total)")
print("Average: \(analysis.average)")

print("\n========== END ==========")
