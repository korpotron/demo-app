import SwiftUI

struct ProductMissingView: View {
    @Environment(\.route)
    var route

    var body: some View {
        VStack {
            Text(verbatim: "Product not found")

            RouteView {
                Button("/bag") {
                    route(CatalogRedirect.bag)
                }
                Button("/products") {
                    route(CatalogRoute.list)
                }
                Button("/products/2") {
                    route(CatalogRoute.details(2))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding()
        .navigationTitle("Product details")
    }
}

#Preview {
    ProductMissingView()
}
