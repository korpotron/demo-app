import SwiftUI

enum SupportItem: String {
    case faq
    case support
}

struct SupportView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink(value: SupportItem.faq) {
                        Text(verbatim: "FAQ")
                            .padding(.vertical)
                    }
                    NavigationLink(value: SupportItem.support) {
                        Text(verbatim: "App Support")
                            .padding(.vertical)
                    }
                }
            }
            .navigationTitle("Support")
            .navigationDestination(for: SupportItem.self) { destination in
                Text(verbatim: destination.rawValue)
            }
        }
        .tabItem {
            Image(systemName: "message.and.waveform")
            Text(verbatim: "Support")
        }
    }
}

#Preview {
    TabView {
        SupportView()
    }
}
