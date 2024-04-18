import SwiftUI

struct SecondaryButton<Label: View>: View {
    let action: () -> Void
    @ViewBuilder let label: () -> Label

    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                label()
                    .padding(.vertical, 4)
                Spacer()
            }
        }
        .buttonStyle(.bordered)
    }
}

extension SecondaryButton where Label == Text {
    init(_ verbatim: String, action: @escaping () -> Void) {
        self.init(action: action) {
            Text(verbatim: verbatim)
        }
    }
}

#Preview {
    SecondaryButton("Lorem ipsum", action: {})
        .padding()
}
