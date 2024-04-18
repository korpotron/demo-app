import Foundation

@Observable
final class Configration {
    let backend: Backend

    init(backend: Backend) {
        self.backend = backend
    }

    static let `default` = Configration(backend: .production)
}
