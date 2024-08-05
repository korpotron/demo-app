import SwiftUI

public enum MainFactory {
    public static func build() -> some View {
        MainView()
    }
}

#Preview {
    MainFactory.build()
}
