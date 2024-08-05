import Foundation

public struct ProductID: Hashable, ExpressibleByIntegerLiteral {
    let value: Int

    public init(_ value: Int) {
        self.value = value
    }

    public init(integerLiteral value: IntegerLiteralType) {
        self.value = value
    }
}

struct Product: Identifiable, Hashable {
    let id: ProductID
    let name: String
}
