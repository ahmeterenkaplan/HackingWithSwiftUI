import Cocoa

// Functions pt-1

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
