import Cocoa

//Conditions

// 1-) If

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
