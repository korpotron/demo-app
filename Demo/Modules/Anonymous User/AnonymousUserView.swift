import SwiftUI
import Toolbelt

enum AnonymousUserStep {
    case welcome
    case login
    case register
}

enum AnonymousUserOutput {
    case configuration
    case authorized
}

struct AnonymousUserView: View {
    let output: (AnonymousUserOutput) -> Void

    @State var step: AnonymousUserStep = .welcome

    var body: some View {
        switch step {
        case .welcome:
            WelcomeView { result in
                switch result {
                case .login:
                    goto(.login)
                case .register:
                    goto(.register)
                case .configuration:
                    output(.configuration)
                }
            }
        case .login:
            LoginView { result in
                switch result {
                case .welcome:
                    goto(.welcome)
                case .authorized:
                    output(.authorized)
                case .registration:
                    break
//                    output(.)
                }
            }
        case .register:
            RegisterView { result in
                switch result {
                case .back:
                    goto(.welcome)
                }
            }
        }
    }

    private func goto(_ value: AnonymousUserStep) {
        withAnimation {
            step = value
        }
    }
}
