import Cocoa

// Closures
func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

let sayhello = {
    print("hello man")
}
sayhello()

let sayHello = {(name: String) -> String in // parametre alan ve geri döndüren fonksiyon. *** in parametrelerin dönüşünü belirlemek için gereklidir.
    "Hello \(name)"
}
sayHello("ismail")

var greetCCopy: () -> Void = greetUser


func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

sayHello("Taylor")

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)


let upgrade = {
    print("Upgrading...")
}
upgrade()

var pickFruit = { (name: String) in
    switch name {
    case "strawberry":
        fallthrough
    case "raspberry":
        print("Strawberries and raspberries are half price!")
    default:
        print("We don't have those.")
    }
}

pickFruit("strawberry")

let calculateResult = { (answer: Int) in
    if answer == 42 {
        print("You're correct!")
    } else {
        print("Try again.")
    }
}
calculateResult(42)

var cutGrass = { ( currentLength: Double) in
    switch currentLength {
    case 0...1:
        print("That's too short")
    case 1...3:
        print("It's already the right length")
    default:
        print("That's perfect.")
    }
}
cutGrass(1)


let callNumber = { (number: Int) -> String in
    return "Calling now..."
}
callNumber(66)


let convertNumerals = { (numeral: String) -> String in
    switch numeral {
    case "I":
        return "1"
    case "II":
        return "2"
    case "III":
        return "3"
    default:
        return "?"
    }
}
print(convertNumerals("II"))
