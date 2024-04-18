import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack {
            Text(verbatim: "Account")
        }
        .tabItem {
            Image(systemName: "person")
            Text(verbatim: "Account")
        }
    }
}

#Preview {
    TabView {
        AccountView()
    }
}
