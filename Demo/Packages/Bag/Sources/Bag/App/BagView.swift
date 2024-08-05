import Route
import SwiftUI

struct BagView: View {
    @Environment(\.route)
    var route

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                VStack {
                    Button("/products") {
                        route(BagRedirect.products(.list))
                    }
                    Button("/products/1") {
                        route(BagRedirect.products(.details(1)))
                    }
                    Button("/products/2") {
                        route(BagRedirect.products(.details(2)))
                    }
                    Button("/products/3") {
                        route(BagRedirect.products(.details(3)))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.teal, ignoresSafeAreaEdges: [])
            }
            .navigationTitle("Bag")
        }
    }
}

#Preview {
    BagView()
}
