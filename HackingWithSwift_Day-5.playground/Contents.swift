import Cocoa

//Conditions

// 1-) If-Else-Else If

var vize=20
var final=69
var ortalama=((vize*40)+(final*60))/100
if ortalama>=50{
    print("Geçti")
}
else{
    print("Kaldı")
}

var isim1="ali"
var isim2="veli"
if isim1<isim2{
    print(isim1)
}

var numbers=[1,2,3,4,5]
if numbers.count>3{
    numbers.remove(at: 2)
}
print(numbers)

var country="türkiye"
if country=="türkiye"{
    print("doğru ülke")
}
if country != "amerika"{
    print("amerika bizi kıskanıyor")
}

var username="anonim"
username=""
if username==""{
    print("kullanıcı adı yok \(username)")
}
if username.count==0{
    print("kullanıcı adı yok \(username)")
}
if username.isEmpty == true{ //isEmpty. Bu, kontrol ettiğiniz şeyin içinde hiçbir şey yoksa geri gönderir
    print("anonim")
}

if username.isEmpty{
    print("anonim")
}

var age=19
if age >= 21{
    print("reşit")
}
else{
    print("reşit değil")
}
let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}

let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

enum Ulasim {
    case araba, otobus, uçak, helikopter,yürüyerek
}
var arac=Ulasim.uçak
if arac == .araba || arac == .otobus {
    print("trafik kurallarına uyun")
}
else if arac == .helikopter || arac == .uçak{
    print("iyi uçuşlar")
}
else{
print("    yürürken dinlen ")
}
// 2-) Switch-Key
enum Weather{
    case sun , rain , snow , wind , unknown
}
let forecast = Weather.sun

switch forecast {
case .sun :
    print("hava çok sıcak")
case .rain :
    print("şemsiye almalısın")
case .snow :
    print("şemsiye almalısın")
case .wind :
    print("şemsiye almalısın")
case .unknown :
    print("şemsiye almalısın")

}

let place="ankara"

switch place {
case "izmir" :
    print("konya'dan uzak mı?")
case "konya" :
    print("ankara'dan uzak mı?")
default :
    print("nerdesin sen ???")
}

let day=5
print("My true love gave to me…")
switch day {
case 5:
    print("5 golden rings")
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}

let days = 5
print("My true love gave to me…")

switch days {
case 5:
    print("5 golden rings")
    fallthrough //bir case bloğunun işlem bittikten sonra bir sonraki case’e geçmesini sağlamak için
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// 3-) Conditional operator

let ages=12
let isStudent=ages>=18 ? print("true") : print("false")

let hour = 22
let isNight=hour>=18 ? print("night") : print("not night")

let names=["eren","murat","kaplan"]
let crewCount = names.isEmpty ? "no one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light
    case dark
}
let theme = Theme.dark
let background = theme == .dark ? "black" : "white"
print(background)



