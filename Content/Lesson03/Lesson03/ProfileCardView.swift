import SwiftUI

struct ProfileCardView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                HeaderView()

                HStack(spacing: 16) {
                    InfoCardView(number: "850", label: "Takipçi")
                    InfoCardView(number: "120", label: "Takip Edilen")
                    InfoCardView(number: "2.3K", label: "Beğeni")
                }
                .padding(.horizontal)

                AboutMeView()
                
                HStack(spacing: 16) {
                    ActionButton(title: "Mesaj Gönder", icon: "message.fill", backgroundColor: .blue)
                    ActionButton(title: "Takip Et", icon: "person.crop.circle.badge.plus", backgroundColor: .black)
                }
                .padding()
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .foregroundColor(.white)
                .padding(4)
                .background(Color.white.opacity(0.3))
                .clipShape(Circle())
                .shadow(radius: 10)

            Text("Furkan Sakız")
                .font(.system(size: 28, weight: .bold, design: .rounded))
                .foregroundColor(.white)

            Text("iOS Developer | SwiftUI Meraklısı 👩‍💻")
                .font(.headline)
                .foregroundColor(.white.opacity(0.8))
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 60)
        .padding(.bottom, 30)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.purple, Color.blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
    }
}


#Preview {
    ProfileCardView()
}
