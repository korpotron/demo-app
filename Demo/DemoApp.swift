import SwiftUI

@main
struct DemoApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
                .toolbelt(true)
                .onOpenURL { url in
                    // url to links
                }
        }
    }
}
