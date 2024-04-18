import SwiftUI

enum RegisterOutput {
    case back
}

struct RegisterView: View {
    let action: (RegisterOutput ) -> Void

    var body: some View {
        VStack {
            Text(verbatim: "Register")
                .padding()
            Text(verbatim: "Terms")
                .padding()
            Spacer()
            Button {
                action(.back)
            } label: {
                Text(verbatim: "Back")
            }
        }
    }
}

#Preview {
    RegisterView { _ in }
}
