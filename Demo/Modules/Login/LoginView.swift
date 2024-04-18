import SwiftUI

enum LoginOutput {
    case welcome
    case registration
    case authorized
}

enum LoginStep {
    case username
    case password
}


struct LoginView: View {
    let output: (LoginOutput) -> Void

    @State var step: LoginStep = .username

    var body: some View {
        VStack {
            switch step {
            case .username:
                NavigationStack {
                    LoginUsernameView { result in
                        switch result {
                        case let .login(login):
                            goto(.password)
                        case .register:
                            output(.registration)
                        }
                    }
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            JumpButton(kind: .close) {
                                output(.welcome)
                            }
                        }
                    }
                }
            case .password:
                NavigationStack {
                    LoginPasswordView { result in
                        switch result {
                        case .reset:
                            break
                        }
                    }
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            JumpButton(kind: .back) {
                                goto(.username)
                            }
                        }
                    }
                }
            }
        }
    }

    private func goto(_ step: LoginStep) {
        self.step = step
    }
}

#Preview {
    LoginView { _ in }
}
