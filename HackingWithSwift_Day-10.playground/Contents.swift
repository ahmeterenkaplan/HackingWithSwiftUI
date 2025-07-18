import Cocoa

// Structs

struct Album {
    let title: String
    let artist: String
    let Year: Int
    
    func printSummary() {
        print("Album: \(title)")
        print("Artist: \(artist)")
        print("Year: \(Year)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", Year: 2012)
let wings=Album(title: "Wings", artist: "BTS", Year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

struct Employee {
    let name: String
    var vacationRemaining: Int

    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)
var archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)

let a = 1
let b = 2.0
let c = Double(a) + b

let name: String
var vacationRemaining = 14

