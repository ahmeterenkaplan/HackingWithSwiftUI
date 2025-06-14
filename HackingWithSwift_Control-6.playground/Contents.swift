import Cocoa

/**
 Bir arabanın modeli, koltuk sayısı ve mevcut vitesi dahil olmak üzere bir araba hakkında bilgi depolamak için bir yapı oluşturun, ardından vitesleri yukarı veya aşağı değiştirmek için bir yöntem ekleyin. Değişkenler ve erişim kontrolü hakkında düşünün: Hangi veriler sabit yerine değişken olmalı ve hangi veriler herkese açık olarak ifşa edilmelidir? Vites değiştirme yöntemi girdisini bir şekilde doğrulamalı mı?
 */
/**
 Tamam, işte birkaç ipucu:

 Bir arabanın modeli ve koltuk sayısı üretildikten sonra değişmeyecektir, bu yüzden sabit olabilirler. Ancak mevcut vitesi açıkça değişir , bu yüzden bunu bir değişken yapın.
 Vitesleri yukarı veya aşağı değiştirmek böyle bir değişikliğin mümkün olmasını sağlamalıdır; örneğin, 0 vites diye bir şey yoktur ve çoğu arabayı, hatta tüm arabaları kapsayacak şekilde maksimum 10 vitesin olduğunu varsaymak güvenlidir.
 Erişim denetimi kullanıyorsanız private, muhtemelen kendi başlatıcınızı da oluşturmanız gerekecektir. ( privateBurası en iyi seçim mi? Kendiniz deneyin ve ne düşündüğünüzü görün!)
 mutatingÖzellikleri değiştiren metotlarda anahtar kelimeyi kullanmayı unutmayın !
 */
struct Car {
    let model: String
    let seatCount: Int
    private var currentGear: Int
    
    mutating func changeGear(upwards: Bool) {
        if upwards {
            currentGear = min(currentGear + 1, 10)
        } else {
            currentGear = max(currentGear - 1, 0)
        }
    }
}

/**
 struct Car {
     let model: String     // constant! probably won't change
     let seatCount: Int    // same!
     private(set) var currentGear = 1  // only change via an internal method.

     enum GearDirection {
         case up, down, neutral
     }

     public mutating func changeGear(_ direction: GearDirection) {
         switch direction {
         case .down : currentGear -= 1
             if currentGear < 1 {currentGear = 1}
         case .up :   currentGear += 1
             if currentGear > 10 { currentGear = 10 }
         case .neutral:
             currentGear = 1  // arbitrary selection
         }
         print("The \(model) is in gear: \(currentGear)")
     }
 }

 // Test Code
 var prefect = Car(model: "Ford Prefect", seatCount: 4, currentGear: 3)
 prefect.changeGear(.up)
 prefect.changeGear(.neutral) // Jump right to Gear 1.
 prefect.changeGear(.down)  // try this line a couple of times. try to get below zero.
 */
