import SwiftUI
import Toolbelt

enum AuthorizedUserOutput {
    case dismiss
}

struct AuthorizedUserView: View {
    let output: (AuthorizedUserOutput) -> Void

    var body: some View {
        MainView {
            output(.dismiss)
        }
    }
}
