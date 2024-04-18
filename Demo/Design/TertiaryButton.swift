import SwiftUI

struct TertiaryButton<Label: View>: View {
    let action: () -> Void
    @ViewBuilder let label: () -> Label

    var body: some View {
        Button(action: action) {
            HStack {
                label()
                    .padding(.vertical, 4)
                    .underline()
            }
        }
        .buttonStyle(.borderless)
    }
}

extension TertiaryButton where Label == Text {
    init(_ verbatim: String, action: @escaping () -> Void) {
        self.init(action: action) {
            Text(verbatim: verbatim)
        }
    }
}

#Preview {
    TertiaryButton("Lorem ipsum", action: {})
        .padding()
}
