import SwiftUI

struct DashboardView: View {
    let dismiss: () -> Void

    var body: some View {
        VStack {
            Text(verbatim: "Dashboard")
            Button("Dismiss", action: dismiss)
        }
        .tabItem {
            Image(systemName: "list.bullet.rectangle.portrait")
            Text(verbatim: "Dashboard")
        }
    }
}

#Preview {
    DashboardView {}
}
