import Cocoa

// Functions pt.2

// F 2.1

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll()
print(characters.count)
characters.removeAll(keepingCapacity: true) // keepingCapacity: true demek, dizinin bellekteki kapasitesini koru. Yani, tekrar eleman eklenecekse performans için önceden ayrılmış yer tutulur.
print(characters.count)

// F 2.2 Functionsdaki Hatalar
// Swift'e oluşabilecek olası hataları anlatmak.
// Oluşan hataları işaretleyebilen bir fonksiyon yazmak.
// Bu fonksiyonu çağırıp, oluşabilecek hataları yönetiyoruz.
enum PasswordError: Error {
    case short, obvious
}
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}
/* Bunu biraz açalım.
Eğer bir fonksiyon kendisi işlem yapmadan hata atabiliyorsa, dönüş tipinden önce fonksiyonu throws olarak işaretlemelisiniz.
Fonksiyon tarafından tam olarak ne tür bir hata atılacağını belirtmeyiz, sadece hata atabileceğini belirtiriz.
Throws ile işaretlenmiş olması, fonksiyonun hata vermesi gerektiği anlamına gelmez, sadece hata verebileceği anlamına gelir.
Bir hata atma zamanı geldiğinde, throw ve ardından PasswordError durumlarımızdan birini yazıyoruz. Bu, işlevden hemen çıkar, yani bir dize döndürmez.
Herhangi bir hata atılmazsa, fonksiyon normal şekilde davranmalıdır - bir dize döndürmesi gerekir
*/
do {
    let string = "12345"
    
    do {
        let result = try checkPassword(string)
        print("Password rating: \(result)")
    } catch PasswordError.short {
        print("Please use a longer password.")
    } catch PasswordError.obvious {
        print("I have the same combination on my luggage!")
    } catch {
        print("There was an error.")
    }
}

