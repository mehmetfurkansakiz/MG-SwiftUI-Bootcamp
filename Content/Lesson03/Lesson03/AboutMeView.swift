import SwiftUI

struct AboutMeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Hakkımda")
                .font(.system(size: 22, weight: .bold, design: .rounded))

            Text("Sakarya'da yaşayan bir mobil uygulama geliştiricisiyim. SwiftUI ile modern ve kullanıcı dostu arayüzler oluşturmayı seviyorum. Bootcamp'te yeni şeyler öğrenmek ve kendimi geliştirmek en büyük hedefim.")
                .foregroundColor(.secondary)
        }
        .padding()
    }
}
