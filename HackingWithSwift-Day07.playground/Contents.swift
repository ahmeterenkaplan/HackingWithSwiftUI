import Cocoa

// Functions pt-1
// F 1.1
func showWelcomeMessage() {
    print("hello world")
    print("merhabalar")
    print("hola como estas")
    
}
showWelcomeMessage()

func carpımTablo(sayı: Int) {
    for i in 1...12 {
        print("\(sayı) x \(i) = \(sayı * i)")
    }
}
carpımTablo(sayı: 5)

func isteneneKadarCarpımTablosu(sayı: Int, bitis:Int) {
    for i in 1...bitis  {
        print("\(sayı) * \(i) = \(sayı*i)")
}
    }

isteneneKadarCarpımTablosu(sayı: 2, bitis: 4)

// F 1.2 return
let kok = sqrt(144)
print(kok)

//Bir fonksiyondan kendi değerinizi döndürmek istiyorsanız , iki şey yapmanız gerekir:
//1-Fonksiyonunuzun açılış parantezinden önce bir ok ve ardından bir veri türü yazın; bu, Swift'e ne tür verilerin geri gönderileceğini söyler.
//2-return Verilerinizi geri göndermek için anahtar kelimeyi kullanın .

func zarAtma() -> Int {
    return Int.random(in: 1...6)
}
var zar = zarAtma()
print(zar)

// örnek : Daha karmaşık bir örnek deneyelim: iki str, sıralarından bağımsız olarak aynı harfleri içeriyor mu? Bu fonksiyon iki dize parametresini kabul etmeli ve harfleri aynıysa true döndürmelidir - bu nedenle, "abc" ve "cab" true döndürmelidir çünkü ikisi de bir "a", bir "b" ve bir "c" içerir.
func ornBirCozBir(str1: String, str2: String) -> Bool {
    let strr1=str1.sorted()
    let strr2=str2.sorted()
    return strr1==strr2
}
print(ornBirCozBir(str1: "ali", str2: "ila"))

func ornBirCozIki(str1: String, str2: String) -> Bool {
    return str1.sorted() == str2.sorted()
}
print(ornBirCozIki(str1:"pol", str2: "lop"))

// Tek satır dönen funclarda returne gerek yok.
func ornBirCozUc(str1: String, str2: String) -> Bool {
    str1.sorted() == str2.sorted()
}
print(ornBirCozUc(str1: "ali", str2: "ial"))

func rollDice() -> Int {
    Int.random(in: 1...6)
}
print(rollDice())

func pythagoras(a: Double, b: Double) -> Double { //pisagor
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)
// yada returnsuz çözümü
//func pythagoras(a: Double, b: Double) -> Double {
//    sqrt(a * a + b * b)
//}

// F 1.3

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
let firstName = user.firstName
let lastName = user.lastName

print("Name: \(firstName) \(lastName)")
func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()

    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }

    // Send back all the rolls
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

//Yazıyoruz for number: Int: dış adı for, iç adı number, ve türü Int.
//Fonksiyonu çağırdığımızda parametre için harici adı kullanırız: printTimesTables(for: 5).
//Fonksiyonun içerisinde parametre için dahili ismi kullanıyoruz: print("\(i) x \(number) is \(i * number)").
