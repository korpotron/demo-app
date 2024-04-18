import SwiftUI

enum LoginPasswordOutput {
    case reset
}

struct LoginPasswordView: View {
    let output: (LoginPasswordOutput) -> Void

    @State var text = ""

    var body: some View {
        Container {
            Spacer()
            TextField(text: $text) {
                Text(verbatim: "Password")
            }
            .textFieldStyle(.roundedBorder)
            Spacer()
            VStack(spacing: 20) {
                PrimaryButton("Sign In") {

                }
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(verbatim: "Don't remember password?")
                        TertiaryButton("Reset it") {
                            output(.reset)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    LoginPasswordView { _ in }
}
