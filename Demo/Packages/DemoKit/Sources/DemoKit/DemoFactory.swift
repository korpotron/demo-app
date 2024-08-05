import Bag
import Construct
import Main
import Catalog
import Route
import SwiftUI
import Checkout

public enum DemoFactory {
    public static func build() -> some View {
        MainFactory.build()
            .construct(for: MainPlaceholder.self) { placeholder in
                switch placeholder {
                case .products:
                    CatalogFactory.build()
                case .bag:
                    CheckoutFactory.build()
                }
            }
            .route(CatalogRedirect.self) { redirect in
                .next(MainRoute.from(redirect))
            }
            .route(BagRedirect.self) { redirect in
                .next(MainRoute.from(redirect))
            }
            .route(BagRedirect.self) { redirect in
                .next(CatalogRoute.from(redirect))
            }
    }
}

private extension MainRoute {
    static func from(_ redirect: CatalogRedirect) -> Self {
        switch redirect {
        case .bag: .bag
        }
    }

    static func from(_ redirect: BagRedirect) -> Self {
        switch redirect {
        case .products: .products
        }
    }
}

private extension CatalogRoute {
    static func from(_ redirect: BagRedirect) -> Self {
        switch redirect {
        case let .products(products):
            switch products {
            case .list: .list
            case let .details(id): .details(ProductID(id))
            }
        }
    }
}

#Preview {
    DemoFactory.build()
}
