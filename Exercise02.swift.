// SE4041 - Practical 03
// Exercise 02 - Guard Statements

print("========== GUARD STATEMENTS ==========")

// Example 1: Check whether a name exists

func register(_ name: String?) {

    guard let name = name else {
        print("No name given")
        return
    }

    print("Registered \(name)")
}

register("Kamal")
register(nil)


// Example 2: Validate an empty name

print("\n========== NAME VALIDATION ==========")

func validateName(_ name: String?) {

    guard let name = name else {
        print("No name given")
        return
    }

    guard !name.isEmpty else {
        print("Name cannot be empty")
        return
    }

    print("Registered \(name)")
}

validateName(nil)
validateName("")
validateName("Kamal")


// Activity 3: Check Student Details

print("\n========== STUDENT VALIDATION ==========")

func checkStudent(name: String?, mark: Int?) {

    guard let name = name else {
        print("Student name unavailable")
        return
    }

    guard let mark = mark else {
        print("Student mark unavailable")
        return
    }

    print("\(name) received \(mark) marks")
}

checkStudent(name: "Kamal", mark: 75)
checkStudent(name: nil, mark: 75)
checkStudent(name: "Kamal", mark: nil)

print("\n========== END ==========")
