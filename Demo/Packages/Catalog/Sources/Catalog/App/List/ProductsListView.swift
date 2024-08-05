import Route
import SwiftUI

struct ProductsListView: View {
    @EnvironmentObject
    var repository: ProductRepository

    @Environment(\.route)
    var route

    var body: some View {
        VStack(spacing: .zero) {
            List {
                ForEach(repository.products) { product in
                    NavigationLink(value: ProductsListChild.details(product.id)) {
                        VStack(alignment: .leading) {
                            Text(verbatim: product.name)
                            Text(verbatim: String(product.id.value))
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
            }
            VStack {
                Button("/bag") {
                    route(CatalogRedirect.bag)
                }
                Button("/products") {
                    route(CatalogRoute.list)
                }
                Button("/products/1") {
                    route(CatalogRoute.details(ProductID(1)))
                }
                Button("/products/3") {
                    route(CatalogRoute.details(ProductID(3)))
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.teal, ignoresSafeAreaEdges: [])
        }
        .navigationTitle("Products")
    }
}

#Preview {
    NavigationStack {
        ProductsListView()
            .environmentObject(ProductRepository())
    }
}
