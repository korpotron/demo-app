import SwiftUI

struct ConfigurationView: View {
    @State var current: Configration
    let done: (Configration?) -> Void

    var body: some View {
        NavigationStack {
            List {
                ForEach(Backend.allCases, id: \.self) { backend in
                    Button {
                        current = Configration(backend: backend)
                    } label: {
                        HStack {
                            Text(verbatim: backend.rawValue)
                            Spacer()
                            if current.backend == backend {
                                Image(systemName: "checkmark")
                            }
                        }
                        .foregroundColor(.primary)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text(verbatim: "🦆 Configuration")
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        done(nil)
                    } label: {
                        Text("Cancel")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        done(current)
                    } label: {
                        Text("Save")
                    }
                }
            }
        }
        .tint(.teal)
    }
}
