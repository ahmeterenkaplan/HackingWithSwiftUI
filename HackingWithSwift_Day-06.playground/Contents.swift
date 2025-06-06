import Cocoa

// LOOPS

// 1-) For Loop

let platforms=["iOS","macOS","tvOS","watchOS"]
for os in platforms{
    print("Swift is supported on \(os)")
}

for i in 1...30 {
    print("bugün haziran ayının \(i). günü")
}

// 2-) Whlie Loop
var countdown=10
while countdown>0{
    print(countdown)
    countdown-=1
}

let id = Int.random(in: 1...100)
print("ID: \(id)")
let amount = Double.random(in: 1...1000)
print("Amount: \(amount)")

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")

// 3-) continuw and break
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}


let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
