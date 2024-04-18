import SwiftUI

enum ContentStep {
    case anonymous
    case authorized
}

enum ContentOutput {
    case configuration
}

struct ContentView: View {
    let output: (ContentOutput) -> Void

    @State var step: ContentStep = .anonymous

    var body: some View {
        switch step {
        case .anonymous:
            AnonymousUserView { result in
                switch result {
                case .configuration:
                    output(.configuration)
                case .authorized:
                    step = .authorized
                }
            }
        case .authorized:
            AuthorizedUserView { result in
                switch result {
                case .dismiss:
                    step = .anonymous
                }
            }
        }
    }
}
