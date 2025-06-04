import Cocoa
// Complex data types, part 1

// 1-) Ordered Arrays
var gameOfThrones =  ["Jon","Arya","Sana","Tyrion"]
var ages=[12,32,43,23]
var finance = [12.5,33.3,123.123,123.123]

print(gameOfThrones[2])
print(ages[0])
print(finance[1])

//append --> Diziye yeni eleman ekler
gameOfThrones.append("Daenerys")
ages.append(24)
finance.append(123.123)

print(gameOfThrones)
print(ages)
print(finance)

let firstActor = gameOfThrones[4]
let firstAge = ages[4]
let firstFinance = finance[4]

var scores=Array<Int>()
scores.append(100)
scores.append(80)
scores.append(90)
scores.append(70)

print(scores)


var names=Array<String>()
names.append("Ali")
names.append("Veli")
names.append("Can")
names.append("Mehmet")

print(names)

var sts = [String]()
sts.append("Ali")
sts.append("Veli")
sts.append("Can")
sts.append("Mehmet")

print(sts)

print(sts.count)

// removeAt --> Dizideki istenilen indexdeki elemanı çıkarır.
// removeAll --> Dizideki tüm verileri çıkarır.

sts.remove(at: 2)
print(sts)

sts.removeAll()
print(sts)

//contains() --> İstenilen öğenin dizinin içinde olup olmadıgını kontrol eder.

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

// sorted() --> diziyi sıralamk için.
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

// reversed() --> diziyi tersine çevirir.
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()

reversedPresidents // artık bir dizi değildir....

// 2-) How to store and find data in dictionaries.

var ogrenci=["ahmet eren","kaplan","2132555","Bilgisayar Müh.","Swfit_Developer"]

let ogrenciDic=["name":"ahmet eren","surname":"kaplan","number":"2132555","bolum":"bilgisayar muh","alan":"swift_developer"]
ogrenciDic["name"]
ogrenciDic["alan"]


let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])
// eger istenilen datanın bir karşılıgı yoksa unknown döner

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

var famAges = [String:Int]()
famAges["eren"]=22
famAges["nida"]=22
print( famAges["nida"] )


// 3-) Sets
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people.count)
print(people)
var fam=Set<String>()
// insert kümeye veri ekler
fam.insert("eren")
fam.insert("nida")
print(fam)
print(fam.contains("nida"))


// 4-) Enums : Değişmeyecek şeyleri sıralı saklamın en iyi yollarından biiri
enum Weekday {
    case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}
var day=Weekday.Monday
print(day)
day=Weekday.Tuesday
print(day)

