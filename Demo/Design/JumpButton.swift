import SwiftUI

struct JumpButton: View {
    struct Kind {
        let icon: String

        static let close = Kind(icon: "xmark")
        static let back = Kind(icon: "chevron.backward")
    }

    let kind: Kind
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: kind.icon)
            }
            .padding(10)
            .background(.quaternary)
            .clipShape(.circle)
        }
        .frame(width: 50, height: 50)
    }
}

#Preview {
    HStack {
        JumpButton(kind: .back) {}
        JumpButton(kind: .close) {}
    }
}
