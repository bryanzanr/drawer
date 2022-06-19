//: # WWDC 2022! Draw My Life App on SwiftUI.
//: - AboutMe: Tab View application.
//: - ChooseYourOwnStory: Navigation View application.

//
//This application is about my feeling and dreams about something
//which I want to express on
//developed by Bryanza Novirahman
//@version 24-04-202w
//

/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct ContentView: View {
    
    @State var isActive:Bool = false
    @StateObject private var myNotes = NotesModel()
    
    var body: some View {
        VStack {
            if self.isActive {
                TabView {
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "person")
                        }
                    
                    NavigationView {
                        StoryView(story: story, pageIndex: 0)
                    }.navigationViewStyle(.stack)
                    .tabItem {
                        Label("Story", systemImage: "book")
                    }
                    
                    NavigationView {
                        FavoritesView()
                    }
                    .navigationViewStyle(.stack)
                    .tabItem {
                        Label("Favorites", systemImage: "star")
                    }
                    
                    NotesView(myNotes: myNotes)
                        .tabItem {
                            Label("Disclaimer", systemImage: "hand.thumbsup")
                        }
                }
            } else {
                Text("Draw Bry Life!")
                   .font(Font.largeTitle)
            }
        }
        .preferredColorScheme(.dark)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
