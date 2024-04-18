import SwiftUI
import Toolbelt

enum WelcomeOutput {
    case login
    case register
    case configuration
}

struct WelcomeView: View {
    let output: (WelcomeOutput) -> Void

    var body: some View {
        ZStack(alignment: .top) {
            HStack {
                ToolbeltReader.enabled {
                    Button {
                        output(.configuration)
                    } label: {
                        ToolbeltEmblem()
                    }
                }
                Spacer()
                ConfigurationInfoToolbelt()
            }
            .padding()

            Container {
                Spacer()
                Text(verbatim: "Welcome")
                Spacer()
                VStack {
                    PrimaryButton("Login") {
                        output(.login)
                    }
                    SecondaryButton("Register") {
                        output(.register)
                    }
                }
            }
        }
    }
}

#Preview {
    WelcomeView { _ in }
}
