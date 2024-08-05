import Construct
import SwiftUI

public enum CatalogFactory {
    public static func build() -> some View {
        ProductsRootView()
    }
}

#Preview {
    CatalogFactory.build()
}
