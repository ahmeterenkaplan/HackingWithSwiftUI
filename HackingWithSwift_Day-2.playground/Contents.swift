import Cocoa
// Booleans, String interpolation

// 1-) Booleans
var fileName="learingSwift.pdf"
print(fileName.hasSuffix(".pdf"))

var number=22
print(number.isMultiple(of: 2))

let goodDogs=true
let badDogs=false

var isMultipe=120.isMultiple(of: 30)

var isAuthenticated=false
isAuthenticated = !isAuthenticated  //bool ters çevirme işlemi ! işareti ile olur.
print(isAuthenticated)

var gameOver = true // //bool ters çevirme işlemi .toggle() ile olur.
gameOver.toggle()
print(gameOver)

// 2-) String Birleştirme
var firstName="Eren"
var lastName="Kaplan"
var fullName = firstName + lastName
var age=23
var message = "Hello my name is \(firstName),I am \(age) years old." // Kullanışlı yöntem.
message = "Hello my name is eren , I am " + String(age) + " years old." //Kullanılması tavsite edilmez.

print("5x5 =\(5*5)")

