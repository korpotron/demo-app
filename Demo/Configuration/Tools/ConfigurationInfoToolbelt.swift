import SwiftUI
import Toolbelt

struct ConfigurationInfoToolbelt: View {
    @Environment(Configration.self)
    private var configuration

    var body: some View {
        ToolbeltReader.enabled {
            HStack(spacing: 0) {
                Text(verbatim: "backend: ")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                Text(verbatim: configuration.backend.rawValue)
                    .font(.footnote)
            }
        }
    }
}
