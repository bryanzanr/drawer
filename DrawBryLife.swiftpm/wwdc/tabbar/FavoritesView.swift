/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct FavoritesView: View {
    
    @State private var isAddingSymbol = false
    @State private var isEditing = false
    
    @State private var selectedSymbolName: String?
    
    private static let initialColumns = 3
    @State private var numColumns = initialColumns
    @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: initialColumns)
    
    var columnsText: String {
        numColumns > 1 ? "\(numColumns) Columns" : "1 Column"
    }
    
    var body: some View {
        VStack {
            
            if isEditing {
                Stepper(columnsText, value: $numColumns, in: 1...6, step: 1) { _ in
                    withAnimation { gridColumns = Array(repeating: GridItem(.flexible()), count: numColumns) }
                }
                .padding()
            }
            
            ScrollView {
                Text("Favorites")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                
                Text("Hobbies")
                    .font(.title2)
                
                HStack {
                    ForEach(information.hobbies, id: \.self) { hobby in
                        NavigationLink(destination: ItemDetail(symbolName: hobby)) {
                            ZStack(alignment: .topTrailing) {
                                Image(systemName: hobby)
                                    .resizable()
                                    .frame(maxWidth: 80, maxHeight: 60)
                                if isEditing {
                                    Button {
                                        guard let index = information.hobbies.firstIndex(of: hobby) else { return }
                                        withAnimation {
                                            _ = information.hobbies.remove(at: index)
                                        }
                                    } label: {
                                        Image(systemName: "xmark.square.fill")
                                                    .font(Font.title)
                                                    .symbolRenderingMode(.palette)
                                                    .foregroundStyle(.white, Color.red)
                                    }
                                    .offset(x: 7, y: -7)
                                }
                            }
                            .padding()
                        }
                        .buttonStyle(.plain)
                    }
                    .padding()
                }
                .padding()

                Text("Foods")
                    .font(.title2)
                
                HStack(spacing: 60) {
                    ForEach(information.foods, id: \.self) { food in
                        NavigationLink(destination: ItemDetail(symbolName: food)) {
                            ZStack(alignment: .topTrailing) {
                                Text(food)
                                    .font(.system(size: 48))
                            }
                        }
                    }
                }
                .padding()

                Text("Favorite Colors")
                    .font(.title2)

                HStack(spacing: 30) {
                    ForEach(information.colors, id: \.self) { color in
                        color
                            .frame(width: 70, height: 70)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
        .navigationBarTitle("My Symbols")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $isAddingSymbol, onDismiss: addSymbol) {
            FavoritesPicker(name: $selectedSymbolName)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(isEditing ? "Done" : "Edit") {
                    withAnimation { isEditing.toggle() }
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isAddingSymbol = true
                } label: {
                    Image(systemName: "plus")
                }
                .disabled(isEditing)
            }
        }
    }
    
    func addSymbol() {
        guard let name = selectedSymbolName else { return }
        withAnimation {
            information.hobbies.insert(name, at: 0)
        }
    }
    
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
