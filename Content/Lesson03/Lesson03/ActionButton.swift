import SwiftUI

struct ActionButton: View {
    let title: String
    let icon: String
    let backgroundColor: Color
    
    var body: some View {
        Button(action: {
            print("\(title) butonuna tıklandı.")
        }) {
            HStack {
                Image(systemName: icon)
                Text(title)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(backgroundColor)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
    }
}
