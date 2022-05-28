/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct FavoritesPicker: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var name: String?

    let columns = Array(repeating: GridItem(.flexible()), count: 4)

    let pickableItems = [
        "house",
        "sun.max",
        "cloud.rain",
        "pawprint",
        "lungs",
        "face.smiling",
        "gear",
        "allergens",
        "bolt.heart",
        "ladybug",
        "bus",
        "bicycle",
        "faceid",
        "gamecontroller",
        "timer",
        "eye",
        "person.icloud",
        "tortoise",
        "hare",
        "leaf",
        "wand.and.stars",
        "globe.americas",
        "globe.europe.africa",
        "globe.asia.australia",
        "hands.sparkles",
        "hand.draw",
        "waveform.path.ecg.rectangle",
        "gyroscope",
        
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(pickableItems, id: \.self) { item in
                    Button {
                        self.name = item
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: item)
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
