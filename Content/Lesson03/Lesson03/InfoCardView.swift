import SwiftUI

struct InfoCardView: View {
    let number: String
    let label: String

    var body: some View {
        VStack(spacing: 5) {
            Text(number)
                .font(.system(size: 24, weight: .bold, design: .rounded))
            Text(label)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.purple, Color.blue]),
                startPoint: .bottom,
                endPoint: .top
            )
            .opacity(0.2)
        )
        .cornerRadius(10)
    }
}
