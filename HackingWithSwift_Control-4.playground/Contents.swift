import Cocoa

/*
 1'den 10.000'e kadar bir tam sayıyı kabul eden ve o sayının tam karekökünü döndüren bir fonksiyon yazın.
 Swift'in yerleşik fonksiyonunu veya benzerini kullanamazsınız sqrt(); karekökü kendiniz bulmanız gerekir.
 Sayı 1'den küçük veya 10.000'den büyükse "sınır dışı" hatası vermelisiniz.
 Sadece tam sayı kareköklerini dikkate almalısınız; örneğin, 3'ün karekökünün 1,732 olması konusunda endişelenmeyin.
 Eğer karekökünü bulamazsanız "kök yok" hatası verin.
 */
/* bu çözüm benim mantıgım ama çalışmıyor. swiftte ^işareti xor anlamına gelir......
func karekokBul(sayi: Int) -> String {
    if sayi >= 1 && sayi <= 10_000 {
        var temp = sayi ^ (1/2)
        if temp.isMultiple(of: 1) {
            return "\(sayi)'nin karekökü: \(temp)"
        }
        else {
                return "karekök yok"
            }
    }
    else {
        return "sınır dışı 1-10000 arasında sayı girin"
    }
}
karekokBul(sayi: 169)
*/


func karekokBul(sayi: Int) -> String {
    if sayi < 1 || sayi > 10_000 {
        return "Sınır dışı: 1-10000 arasında sayı girin"
    }

    for i in 1...sayi {
        if i * i == sayi {
            return "\(sayi)'nin karekökü: \(i)"
        } else if i * i > sayi {
            break
        }
    }

    return "\(sayi)'nin tam kare bir karekökü yok"
}
karekokBul(sayi: 169)
