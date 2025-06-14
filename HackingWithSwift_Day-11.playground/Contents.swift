import Cocoa
// Structs pt.2

// BankaHesabi adında bir yapı (struct) tanımlıyoruz
struct BankaHesabi {
    // Hesaptaki para miktarını temsil eden değişken
    var bakiye = 0

    // Para yatırma fonksiyonu
    mutating func paraYatir(miktar: Int) {
        bakiye += miktar
    }

    // Para çekme fonksiyonu
    mutating func paraCek(miktar: Int) -> Bool {
        if bakiye >= miktar {
            bakiye -= miktar
            return true // Yeterli para varsa: işlem başarılı
        } else {
            return false // Yetersiz bakiye: işlem başarısız
        }
    }
}

// Yeni bir banka hesabı oluşturuyoruz
var hesap = BankaHesabi()

// Hesaba 100 TL yatırıyoruz
hesap.paraYatir(miktar: 100)

// Hesaptan 200 TL çekmeye çalışıyoruz
let basariliMi = hesap.paraCek(miktar: 200)

// İşlem sonucunu ekrana yazdırıyoruz
if basariliMi {
    print("Para başarıyla çekildi")
} else {
    print("Para çekme işlemi başarısız oldu")
}

// Direkt olarak hesaptan 1000 TL azaltma — bu doğru bir kullanım değil!
// Erişim kontrolünü ihlal ediyor ve veri bütünlüğünü bozabilir.
hesap.bakiye -= 1000 // KURAL İHLALİ!

// Ayrıca private var funds = 0 satırı yapının dışında ve anlamsız kalıyor.
// Bu satır geçersiz çünkü global seviyede `private` olarak tanımlanmış ama kullanılmıyor.
private var bakiye = 0 // HATALI KULLANIM

struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}
School.add(student: "Taylor Swift")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}
struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}
/**
 structKendi yapılarınızı yazıp , ona bir isim verip, yapının kodunu süslü parantezlerin içine yerleştirerek oluşturabilirsiniz .
 Yapılar, değişken ve sabitlere (özellikler olarak bilinir) ve fonksiyonlara (yöntemler olarak bilinir) sahip olabilir
 Bir metot, yapısının özelliklerini değiştirmeye çalışırsa, onu olarak işaretlemelisiniz mutating.
 Özellikleri bellekte saklayabilir veya her erişildiğinde bir değer hesaplayan hesaplanmış özellikler oluşturabilirsiniz.
 didSetBir yapı içindeki özelliklere özellik gözlemcileri ekleyebiliriz willSet; bu, özellik değiştiğinde her zaman bazı kodların yürütüldüğünden emin olmamız gerektiğinde faydalıdır.
 Başlatıcılar, uzmanlaşmış fonksiyonlara benzer ve Swift, özellik adlarını kullanarak tüm yapılar için bir tane oluşturur.
 İsterseniz kendi özel başlatıcılarınızı oluşturabilirsiniz, ancak başlatıcı tamamlandığında ve diğer yöntemleri çağırmadan önce yapınızdaki tüm özelliklerin bir değere sahip olduğundan her zaman emin olmalısınız.
 İhtiyaç halinde, herhangi bir özelliğin ve metodun harici olarak kullanılabilir veya kullanılamaz olduğunu işaretlemek için erişimi kullanabiliriz.
 Bir özelliği veya metodu doğrudan bir yapıya eklemek mümkündür, böylece yapının bir örneğini oluşturmadan bunları kullanabilirsiniz.
 
 */
