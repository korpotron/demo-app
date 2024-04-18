import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            Text(verbatim: "Notifications")
        }
        .tabItem {
            Image(systemName: "bell.badge")
            Text(verbatim: "Notifications")
        }
    }
}

#Preview {
    TabView {
        NotificationsView()
    }
}
