import Cocoa
/**
 Kapatma işini öğrendikten sonra, bunları kullanarak ufak bir kodlama mücadelesi vermenin zamanı geldi.

 sorted(), filter(), , ile zaten tanıştınız map(), bu yüzden bunları bir zincir halinde bir araya getirmenizi istiyorum - birini, sonra diğerini, sonra da diğerini geçici değişkenler kullanmadan arka arkaya çağırın.

 Girdiniz şu şekilde:

 let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
 Göreviniz:

 Çift olan tüm sayıları filtreleyin
 Diziyi artan düzende sırala
 Bunları "7 uğurlu bir sayıdır" biçimindeki dizelere eşleyin
 Sonuç dizisini, satır başına bir öğe olacak şekilde yazdırın
 Yani çıktınız şu şekilde olmalı:

 7 is a lucky number
 15 is a lucky number
 21 is a lucky number
 31 is a lucky number
 33 is a lucky number
 49 is a lucky number
 */

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
let moreNumbers = [7, 1, 14, 13, 42, 199, 24]

let solve = { (numbers: [Int]) in    // Change your input, name it numbers. Any array of int will be called numbers in your function.
    numbers.filter { !$0.isMultiple(of: 2) } // numbers is now filtered, sorted, mapped.
    .sorted()
    .map { print("\($0) is a lucky number.") }
}
print("Lucky Number ===========")
solve(luckyNumbers)
print("More Numbers ===========")
solve(moreNumbers)
