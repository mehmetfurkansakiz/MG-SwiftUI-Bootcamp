import UIKit

struct Kisi {
    let isim: String
    let soyisim: String
    let ikinciIsim: String?
    let yas: Int
    let boy: Double
    let sehir: String
    let mobilGelistiriciMi: Bool
    
    var tamIsim: String {
        if let ikinciIsim = ikinciIsim {
            return "\(isim) \(ikinciIsim) \(soyisim)"
        } else {
            return "\(isim) \(soyisim)"
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case isim, soyisim, yas, sehir, boy
        case ikinciIsim = "ikinci_isim"
        case mobilGelistiriciMi = "mobil_gelistirici_mi"
    }
    
    func bilgileriYazdir() {
        print("Tam adı: \(tamIsim)")
        print("Yaşı: \(yas)")
        print("Şehri: \(sehir)")
        print("Mobil geliştirici mi: \(mobilGelistiriciMi ? "Evet" : "Hayır")")
    }
}

let kisi1 = Kisi(
    isim: "Ahmet",
    soyisim: "Yılmaz",
    ikinciIsim: nil,
    yas: 28,
    boy: 1.78,
    sehir: "İstanbul",
    mobilGelistiriciMi: true
)

let kisi2 = Kisi(
    isim: "Zeynep",
    soyisim: "Kaya",
    ikinciIsim: "Ayşe",
    yas: 34,
    boy: 1.65,
    sehir: "Ankara",
    mobilGelistiriciMi: false
)

kisi1.bilgileriYazdir()
print("---------------")
kisi2.bilgileriYazdir()
