import SwiftUI

public enum BagFactory {
    public static func build() -> some View {
        BagView()
    }
}

#Preview {
    BagFactory.build()
}
