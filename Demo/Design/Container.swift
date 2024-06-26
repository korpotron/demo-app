import SwiftUI

struct Container<Content: View>: View {
    @ViewBuilder let content: () -> Content

    var body: some View {
        VStack {
            content()
                .padding()
        }
    }
}
