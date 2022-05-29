/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct ItemDetail: View {
    var symbolName: String

    var body: some View {
        VStack {
            Text(symbolName)
                .font(.system(.largeTitle, design: .rounded))
            
            Image(symbolName)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(.accentColor)
        }
        .padding()
    }
}
