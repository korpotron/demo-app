import Construct
import Route
import SwiftUI

public struct MainOtherPlaceholder {}

struct MainView: View {
    @State var active: MainRoute = .products

    var body: some View {
        TabView(selection: $active) {
            ConstructView(for: MainPlaceholder.products)
                .tabItem {
                    Label("Products", systemImage: "laptopcomputer.and.iphone")
                }
                .tag(MainRoute.products)
            ConstructView(for: MainPlaceholder.bag)
                .tabItem {
                    Label("Bag", systemImage: "bag")
                }
                .tag(MainRoute.bag)
            ConstructView(for: MainOtherPlaceholder())
                .tabItem {
                    Label("Missing", systemImage: "lightbulb.min.badge.exclamationmark")
                }
        }
        .route(MainRoute.self) { link in
            active = link
        }
    }
}

#Preview {
    MainView()
}
