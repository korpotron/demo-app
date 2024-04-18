import SwiftUI

struct MainView: View {
    let dismiss: () -> Void

    var body: some View {
        TabView {
            DashboardView(dismiss: dismiss)
            NotificationsView()
            AccountView()
            SupportView()
        }
    }
}

#Preview {
    MainView(dismiss: {})
}
