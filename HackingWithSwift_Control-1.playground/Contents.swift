import Cocoa

// Control-1
// 1-) Herhangi bir sıcaklığın Celsius cinsinden sabit tutulmasını sağlar.
// 2-) 9 ile çarpılıp 5'e bölünüp 32 eklenerek Fahrenheit'a çevrilir.
// 3-) Kullanıcıya hem Celsius hem de Fahrenheit değerlerini gösteren sonucu yazdırır.

let celsius = 30.0
let fahrenheit = (celsius*9/5+32)
print("Celsius\(celsius) and Fahrenheit \(fahrenheit)")
