/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct FavoritesPicker: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var name: String?

    let columns = Array(repeating: GridItem(.flexible()), count: 4)
    
    let pickableItems = [
        "book",
        "booth",
        "calendar",
        "camera",
        "cellphone",
        "cloud",
        "contact",
        "facetime",
        "friends",
        "game",
        "garage",
        "keynote",
        "message",
        "movie",
        "music",
        "notes",
        "numbers",
        "pages",
        "phone",
        "photo",
        "podcast",
        "reminder",
        "safari",
        "setting",
        "tunes",
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(pickableItems, id: \.self) { item in
                    Button {
                        self.name = item
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(item)
                            .resizable()
                            .scaledToFit()
                            .symbolRenderingMode(.hierarchical)
                            .foregroundColor(.accentColor)
                            .ignoresSafeArea(.container, edges: .bottom)
                    }
                    .padding()
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

struct FavoritesPicker_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesPicker(name: .constant(nil))
    }
}
