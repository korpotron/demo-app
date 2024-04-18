import SwiftUI
import Toolbelt

enum RootStep {
    case configuration
    case content
}

struct RootView: View {
    @State var step: RootStep = .content
    @State var configuration: Configration = .default

    var body: some View {
        content
    }

    @ViewBuilder var content: some View {
        switch step {
        case .configuration:
            ConfigurationView(current: configuration) { new in
                self.configuration = new ?? configuration
                step = .content
            }
        case .content:
            ZStack(alignment: .topLeading) {
                ContentView { result in
                    switch result {
                    case .configuration:
                        step = .configuration
                    }
                }
                .environment(configuration)
            }
        }
    }
}

#Preview {
    RootView()
}
