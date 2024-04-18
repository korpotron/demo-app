import SwiftUI

enum LoginUsernameOutput {
    case login(String)
    case register
}

struct LoginUsernameView: View {
    let output: (LoginUsernameOutput) -> Void

    @State private var text = ""

    var body: some View {
        Container {
            Spacer()
            TextField(text: $text) {
                Text(verbatim: "Username")
            }
            .textFieldStyle(.roundedBorder)
            Spacer()
            VStack(spacing: 20) {
                PrimaryButton("Continue") {
                    output(.login(text))
                }
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(verbatim: "Don't have an account?")
                        TertiaryButton("Register") {
                            output(.register)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    LoginUsernameView { _ in }
}
