import Construct
import SwiftUI

struct ProductsRootView: View {
    @State var path: [ProductsListChild] = []
    @StateObject var repository = ProductRepository()

    var body: some View {
        NavigationStack(path: $path) {
            ConstructView(for: ProductsListPlaceholder())
                .navigationDestination(for: ProductsListChild.self, destination: view(for:))
        }
        .construct(for: ProductsListPlaceholder.self) {
            ProductsListView()
        }
        .construct(for: ProductDetailsPlaceholder.self) { link in
            ProductDetailsView(product: link.product)
        }
        .construct(for: ProductsMissingPlaceholder.self) {
            ProductMissingView()
        }
        .route(CatalogRoute.self) { route in
            switch route {
            case .list:
                path = []
            case let .details(id):
                path = [.details(id)]
            }
        }
        .environmentObject(repository)
    }

    @ViewBuilder
    private func view(for child: ProductsListChild) -> some View {
        switch child {
        case let .details(id):
            view(for: id)
        }
    }

    @ViewBuilder func view(for id: Product.ID) -> some View {
        if let product = repository.find(by: id) {
            ConstructView(for: ProductDetailsPlaceholder(product: product))
        } else {
            ConstructView(for: ProductsMissingPlaceholder())
        }
    }
}

#Preview {
    ProductsRootView()
}
