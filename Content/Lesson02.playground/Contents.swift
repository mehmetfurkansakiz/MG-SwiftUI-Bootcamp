import Foundation

enum Hesaplama {
    case toplama
    case cikarma
    case carpma
    case bolme
}

func hesapla(sayi1: Double, sayi2: Double, islem: Hesaplama) -> Double? {
    switch islem {
    case .toplama:
        return sayi1 + sayi2
    case .cikarma:
        return sayi1 - sayi2
    case .carpma:
        return sayi1 * sayi2
    case .bolme:
        guard sayi2 != 0 else {
            print("Hata: Tanımsız")
            return nil
        }
        return sayi1 / sayi2
    }
}

if let toplamaSonuc = hesapla(sayi1: 10, sayi2: 5, islem: .toplama) {
    print("Toplama Sonucu: \(toplamaSonuc)")
}

if let cikarmaSonuc = hesapla(sayi1: 10, sayi2: 3, islem: .cikarma) {
    print("Çıkarma Sonucu: \(cikarmaSonuc)")
}

if let carpmaSonuc = hesapla(sayi1: 10, sayi2: 4, islem: .carpma) {
    print("Çarpma Sonucu: \(carpmaSonuc)")
}

hesapla(sayi1: 10, sayi2: 0, islem: .bolme)

let sayilar = [5, 23, 8, 42, 15, 4, 16, 99, 50]
print("Orijinal Dizi: \(sayilar)")

let yirmidenBuyukler = sayilar.filter { (sayi) -> Bool in
    return sayi > 20
}
print("20'den Büyük Sayılar: \(yirmidenBuyukler)")

let ciftSayilar = sayilar.filter { $0 % 2 == 0 }
print("Çift Sayılar: \(ciftSayilar)")

let buyuktenKucuge = sayilar.sorted { (sayi1, sayi2) -> Bool in
    return sayi1 > sayi2
}
print("Büyükten Küçüğe: \(buyuktenKucuge)")

let kucuktenBuyuge = sayilar.sorted { $0 < $1 }
print("Küçükten Büyüğe: \(kucuktenBuyuge)")
