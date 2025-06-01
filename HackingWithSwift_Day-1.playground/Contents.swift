import Cocoa

// 1-) Variables and Constants

// Variables
var applicationName = "Variables and Constants"
print(applicationName)
applicationName="First Variable"
print(applicationName)

// Constants
let pi = 3.14
print(pi)
// pi=3.15 =>> bu hata verecektir bir sabit asla değiştirilmez sadece tanımlandıgı andaki veriyi tutar.

// 2-) Strings

let actorName="Lewis Hamilton"
let brandName="Ferrari"
let carModel="812 GTS"
let lap=66
let message="Hello, World!"

var text="Hello my name is Eren, Im learning \"SwiftUİ\" and i like watcing f1 races..."
// Bu kullanım metin içinde tırnak işareti kullanmamız gereken durumlar için çalıştırıp bakabilirsiniz.

// Swiftte uzun metinler tek satırda tutulur diger durumu swift sevmez yani aşagıdaki kullanım yanlıştır ve tavsiye edilmez.
//  var longText="lorem ipsum
//  dolor
//  sit amet"
// Doğru kullanımı:
var longText="""
lorem ipsum
dolor
sit amet
"""

//.count
let actorName_count=actorName.count // Count kaç harfli olddugunu sayar ancak boşlugu da 1 sayar.
print(actorName_count)

//uppercase
let actorName_uppercase=actorName.uppercased() // string ifadeyi değiştirmeden sadece tüm ifadeyi büyük harflerle yazar.
print(actorName_uppercase)

//lowercase
let actorName_lowercase=actorName.lowercased() // string ifadeyi değiştirmeden sadece tüm ifadeyi küçük harflerle yazar.
print(actorName_lowercase)

//hasSuffix
let actorName_hasSuffix=actorName.hasSuffix("Hamilton")// Bir stringiin bir metinle bitip bitmediğini kontrol eden bir karşılığı da var.
print(actorName_hasSuffix)

//hasPrefix
let actorName_hasPrefix=actorName.hasPrefix("Lewis") // Bize bir stringin seçtiğimiz harflerle başlayıp başlamadığını bildirir.
print(actorName_hasPrefix)


// 3-) Numbers
var score=44
let level=100_00_000_0_0
let c=123.123423
score += 44
print(score)
score *= 2
print(score)
score /= 2
print(score)
score -= 44
print(score)

//isMultiple(of:)
let number=144
number.isMultiple(of: 12) // Bir tamsayıyı çağırarak başka bir tamsayının katı olup olmadığını öğrenebilirsiniz.

let decimalNum=0.3 - 0.01
print(decimalNum)




