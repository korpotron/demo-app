import Route

public enum BagRedirect: RouteLink {
    public enum Products {
        case list
        case details(Int)
    }

    case products(Products)
}
