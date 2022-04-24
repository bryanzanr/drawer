/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct StoryView: View {
    
    let story: Story
    let pageIndex: Int
    
    var body: some View {
        VStack {
            Text("My Story")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            ScrollView {
                Text(information.story)
                    .font(.body)
                    .padding()
            }
            NavigationLink(destination: StoryPageView(story: story, pageIndex: pageIndex)) {
                Text("Click here to begin")
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.gray.opacity(0.25))
                    .cornerRadius(8)
            }
        }
        .padding([.top, .bottom], 50)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(story: story, pageIndex: 0)
    }
}
