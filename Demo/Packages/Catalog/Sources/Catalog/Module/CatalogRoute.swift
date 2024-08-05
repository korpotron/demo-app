import Route

public enum CatalogRoute: RouteLink {
    case list
    case details(ProductID)
}
